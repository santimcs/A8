require 'nokogiri'
require 'open-uri'
require 'certified'
load './my_utils.rb'

process = ARGV.shift

file_in = '..\data\name-ttl.csv'
file_out = '..\data\stats.csv'
file_temp = '..\data\name-tmp.csv'
fo = File.open(file_out, "w")
ft = File.open(file_temp,"w")
fi = File.open(file_in,"r")

if (process == '-o')

	puts "Enter stock name "
	stock_name = gets.chomp
	ft.write stock_name

else

	fi.each do |line|

		array = line.chomp.split(",")
		stock_name = array[0]
		out_line = stock_name + "\n"
		#	puts out_line
		ft.write out_line

	end

end

ft.close

# Column Header
header = 'Name|---Date---|P/E|Yield|EPS|Div|P/BV|Stk Div|Market Cap|Shares|MaxP|MinP|NVDR'
header += "\n"
fo.write(header) #   '..\data\stats.csv   

time = Time.new
puts 'Start at: ' + time.strftime("%I:%M %p")

fi = File.open(file_temp, "r")
puts header
fi.each do |line|

	stock_name = line.chomp
	# stock_name = CGI.escape(line.chomp)
	url = "https://www.settrade.com/C04_01_stock_quote_p1.jsp?txtSymbol=#{stock_name}"
	html_data = open(url).read
	doc = Nokogiri::HTML(html_data)

	elements = doc.xpath("//div[@class='col-xs-6 text-right']")
	tmp = elements.text
	list = tmp.split(" ")
	date1 = list[2]
	#puts date1
	list = date1.split("/")
	date2 = list[2]+'-'+list[1]+'-'+list[0]
	#puts date2

	array = []
	array[0] = stock_name.upcase
	array[1] = date2

	elements = doc.xpath("//div[@class='text-right col-xs-4']")

	#puts elements

	i, k, l = 0
	offset = 2

	elements.each do |element|	


		case i

			when i

				tmp = element.text

				array[offset+i] = tmp

		end	 #case

		i += 1

	end #element

	ary = []
	ary[0] = array[0]
	ary[1] = array[1]
	ary[2] = array[2]
	ary[3] = array[3].chop
	ary[4] = array[4]
	ary[5] = array[5]
	ary[6] = array[6]
	ary[7] = array[7]
	ary[8] = strip_comma(array[8])
	ary[9] = strip_comma(array[9])

	list = array[10].split("/")
	maxp = list[0]
	x = list[1]
	lngth = x.length
	minp = x[1,lngth-1]
	ary[10] = maxp 
	ary[11] = minp

	ary[12] = strip_comma(array[11])

	out_line = ary.join('|') 
	out_line += "\n"
	puts out_line
	fo.write out_line	
	sleep(1)	
	
end #line

time = Time.new
puts 'End at: ' + time.strftime("%I:%M %p")

fo.close
