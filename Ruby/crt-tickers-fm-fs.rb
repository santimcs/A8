require 'nokogiri'
require 'open-uri'
require 'certified'
require 'cgi'

process = ARGV.shift

file_in = '..\data\name-ttl.csv'
file_out = '..\data\tickers.csv'
file_out2 = 'C:\RUBY\PORTLT\DB\tickers.csv'
file_out3 = 'C:\RUBY\PORTMY\DB\tickers.csv'
file_out4 = 'C:\RUBY\PORTPG\DB\tickers.csv'
file_temp = '..\data\name-tmp.csv'
fo = File.open(file_out, "w")
fp = File.open(file_out2, "w")
fq = File.open(file_out3, "w")
fr = File.open(file_out4, "w")
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
header = 'Name,Full Name,Sector,Sub Sector,Market,Website'
header += "\n"
fo.write(header) #   '..\data\tickers.csv
fp.write(header) #   'c:\ruby\portlt\db\tickers.csv'
fq.write(header) #   'c:\ruby\portmy\db\tickers.csv'    
fr.write(header) #   'c:\ruby\portpg\db\tickers.csv'

time = Time.new
puts 'Start at: ' + time.strftime("%I:%M %p")

fi = File.open(file_temp, "r")

fi.each do |line|

	stock_name_old = line.chomp
	stock_name = CGI.escape(line.chomp)
	url = "https://www.set.or.th/set/factsheet.do?symbol=#{stock_name}&language=en&country=TH"
	html_data = open(url).read
	doc = Nokogiri::HTML(html_data)
	elements = doc.xpath("//table[@class='table-factsheet-padding3']//tr[@align='left']//td[@valign='bottom']")

	i = 0
	array = []

	elements.each do |element|	

		array[i] = element.text.strip	
		i += 1		

	end

	# Get categry and market
	elements = doc.xpath("//table[@class='table-factsheet-padding3']//td[@class='factsheet-noline']//td[@align='left']")
	
	elements.each do |element|	

		array[i] = element.text.strip
		i += 1		

	end

	# Get URL
	elements = doc.xpath("//td[@class='factsheet']//a[@class='factsheet']")
	
	elements.each do |element|	

		stock_url = element.text.strip	

		if stock_url.start_with?('Annual')

			array[i] = 'No url'
			i += 1				
			break

		end			

		stock_url.downcase!

		if stock_url.start_with?('http://')

			stock_url = stock_url[7..-1]

		end

		array[i] = stock_url
		break

		i += 1		

	end

	ary = []
	ary[0] = array[0]
	ary[1] = array[1]
	catsub = array[2]

	if catsub.include?('/')

		list = catsub.split('/')
		cat = list.first(1)
		subsector = list.last(1)

	else

		cat = catsub
		subsector = ''
		
	end

	ary[2] = cat
	ary[3] = subsector
	ary[4] = array[3]
	ary[5] = array[5]
	ary[0] = stock_name_old
	out_line = ary.join('|') 
	out_line += "\n"
	puts out_line
	fo.write out_line
	fp.write out_line	
	fq.write out_line	
	fr.write out_line	
	sleep(1)

end

time = Time.new
puts 'End at: ' + time.strftime("%I:%M %p")

fo.close
fp.close
fq.close
fr.close
