require 'nokogiri'
require 'open-uri'
require 'certified'
load './my_utils.rb'

process = ARGV.shift

file_out = '..\data\m50.csv'
fo = File.open(file_out, "w")

# Column Header
header = 'Name,Open,High,Low,Close,ChgAmt,ChgPct,Bid,Offer,Volume,Value(000)'
header += "\n"
fo.write(header) #   '..\data\stats.csv   

time = Time.new
puts 'Start at: ' + time.strftime("%I:%M %p")

	url = "https://www.settrade.com/C13_MarketSummary.jsp?detail=SET50"
	html_data = open(url).read
	doc = Nokogiri::HTML(html_data)
	elements = doc.xpath("//table[@class='table table-info table-hover']//tr//td")

	puts header

	i, j, k = 0
	array = []
	ary = []
	offset = 1

	elements.each do |element|	

		k = i.modulo(11)

		case k

			when k

				tmp = element.text.strip

				array[k] = tmp

		end	 #case

		i += 1

		if (k == 10)
			str = array[0].chop
	#		list = str.split(/[<="\s]+/)
			list = str.split(/[[:space:]]/)
	ary[0] = list[0].strip
	ary[1] = array[1]
	ary[2] = array[2]
	ary[3] = array[3]
	ary[4] = array[4]
	ary[5] = array[5]
	ary[6] = array[6]
	ary[7] = array[7]
	ary[8] = array[8]
	ary[9] = strip_comma(array[9])
	ary[10] = strip_comma(array[10])

	out_line = ary.join(',') 
	out_line += "\n"
	puts out_line
	fo.write out_line	
	sleep(1)	
	end #k

	end #element

time = Time.new
puts 'End at: ' + time.strftime("%I:%M %p")

fo.close
