require 'nokogiri'
require 'open-uri'
require 'certified'
load './my_utils.rb'

file_in   = '..\data\stocks-all.csv'
file_out = 'c:\ruby\port_lite\db\factsheet.csv'

fi = File.open(file_in, "r")
fo = File.open(file_out,"w")

array = []
fo = File.open(file_out, "a")
#	printf "%-8s %10s %4s %6s %6s %1s\n"
puts "Name       Daily Vol Beta    Max     Min S"
puts "------------------------------------------"
fi.each do |line|
  ary_in = line.split(',')
  printf line
  stock_name = ary_in[0]
  status = ary_in[1].chomp
	url = "https://www.set.or.th/set/factsheet.do?symbol=#{stock_name}&language=th&country=TH"
	html_data = open(url).read
	doc = Nokogiri::HTML(html_data)
	elements = doc.xpath("//table[@class='table-factsheet-padding0']//tr//td[@class='factsheet']")

	i = 0
	j = 0
	k = 0
	l = 0
	maxmin = ''
	elements.each do |element|	
		i += 1
		if (i == 2)
			maxmin = element.text.strip
		end
  	if ( element.text.strip  == 'มูลค่าซื้อขาย/วัน (ลบ.)' )
			k = i 
  	end 
  	if ( element.text.strip  == 'Beta' )
			l = i 
  	end 
	end
	i = 0
	ary_out = []
	ary_out[0] = stock_name.upcase
	elements.each do |element|	
		i += 1
		case i
			when k+1
				ary_out[1] = strip_comma(element.text.chop)
			when l+1
				ary_out[2] = element.text.chop
		end		
	end 

	list = maxmin.split("/")
	ary_out[3] = list[0].chop 
	x = list[1]
	lngth = x.length
	ary_out[4] = x[1,lngth-1]
	ary_out[5] = status
	out_line = ary_out.join(',')
	out_line += "\n"
	fo.write(out_line)
	printf "%-8s %11s %4s %6s %7s %1s\n", 
	ary_out[0], ary_out[1], ary_out[2], ary_out[3], ary_out[4], status
end
fo.close
fi.close
