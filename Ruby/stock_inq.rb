require 'nokogiri'
require 'open-uri'
load './my_utils.rb'

puts "Enter stock name "
stock_name = gets.chomp
url = "http://www.settrade.com/C04_01_stock_quote_p1.jsp?txtSymbol=#{stock_name}&ssoPageId=9&selectPage=1"
volume = 0
volume_old = 0
diff = 0
str_diff = ''
ups = 0
downs = 0
sames = 0
price, price_old = 0.0
# signal = '-'
counter = 0
while true do
  counter += 1
  html_data = open(url).read
  doc = Nokogiri::HTML(html_data)

  array = []
  ary_out = []
  stock_name.upcase!
  array[0] = stock_name
  ary_out[0] = stock_name
  elements = doc.xpath("//h1")
  i = 0
  elements.each do |element|
    i += 1		
  	if (i == 2)
  		price = element.text.strip.to_f
  		ary_out[1] = price
  		if (counter == 1)
  		  price_old = price
  		end
  	end
  end

  tables = doc.css('table.table-info')
  rows = tables.css('tr')
  i = 0
  rows.each do | row |
    cols = row.css('td')
    cols.each do | col |
      i += 1
  #   puts i.to_s + ' ' + col.text.strip
      array[i] = col.text.strip
    end
  end
  	
  volume = strip_comma(array[12]).to_i
  ary_out[2] = volume
  if (counter == 1)
  	volume_old = volume
  end  		

  bid_price, bid_vol = array[22].split(" / ")
#  puts bid_price
#  puts bid_vol
  ofr_price, ofr_vol = array[24].split(" / ")
#  puts ofr_price
#  puts ofr_vol

	ary_out[3] = bid_vol
  ary_out[4] = bid_price
  ary_out[5] = ofr_price
  ary_out[6] = ofr_vol

  case 
    when ( price > price_old )
	   ups += 1
    when ( price < price_old )
	   downs += 1
    else 
	   sames += 1	
  end

  signal = '-'
  if (ups - downs >= 3)
    signal = 'S'
  end

  if (ups - downs <= -3)
    signal = 'B'
  end

  diff = (volume - volume_old)
  str_diff = separate_comma(diff)

  out_line = ary_out.join(' ')
#  puts "#{out_line} | #{diff} | #{ups} #{downs} | #{signal}"
  printf "%-8s %.2f %13s %11s %6s %6s %11s %11s %2d %2d %s\n", stock_name, price, 
  array[12], ary_out[3], ary_out[4], ary_out[5], ary_out[6], str_diff, ups, downs, signal
	volume_old = volume
	price_old = price
  sleep(60)
end