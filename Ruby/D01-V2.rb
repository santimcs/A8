require 'nokogiri'
require 'open-uri'
require 'certified'
load './my_utils.rb'

process = ARGV.shift

file_in = '..\data\stocks-all.csv'
file_out = '..\data\dailies.csv'
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
header = 'Name,---Date---,Prv,Open ,High ,low  ,Close,Volume-,Value------,Par,Ceiling,Floor'
header += "\n"
fo.write(header) #   '..\data\dailies.csv 

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

	elements = doc.xpath("//div[contains(text(),'ข้อมูลล่าสุด')]")
	tmp = elements.text
	list = tmp.split(" ")
	date1 = list[1]
	list = date1.split("/")
	date2 = list[2]+'-'+list[1]+'-'+list[0]

	elements = doc.xpath("//h1")
	i, price = 0
	elements.each do |element|	
		if (i == 1)
			price = element.text.strip 
		end 
		i += 1 
	end

	elements = doc.xpath("//table[@class='table table-info']//tr//td")
	i, j = 0
	array = []
	array[0] = stock_name.upcase
	array[1] = date2
	offset = 1

	elements.each do |element|	

		if i.odd?

			case i

				when i

					tmp = element.text.strip
					j = (i/2)+1
					array[offset+j] = tmp

			end	 #case

		end #odd
		i += 1

	end #element

	ary = []
	ary[0] = array[0]
	ary[1] = array[1]
	ary[2] = array[2]
	ary[3] = array[3]
	ary[4] = array[4]
	ary[5] = array[5]
	ary[6] = price
	ary[7] = strip_comma(array[7])
	ary[8] = strip_comma(array[8])
	ary[9] = array[9]
	ary[10] = array[10]
	ary[11] = array[11]	

	out_line = ary.join(',') 
	out_line += "\n"
	puts out_line
	fo.write out_line	
	sleep(2)	
	
end #line

time = Time.new
puts 'End at: ' + time.strftime("%I:%M %p")
fo.close
fi.close