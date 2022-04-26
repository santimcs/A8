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
  # printf line
  stock_name = ary_in[0]
  status = ary_in[1].chomp
	url = "https://www.set.or.th/th/market/product/stock/quote/#{stock_name}/price"
	html_data = open(url).read
	doc = Nokogiri::HTML(html_data)
	 print doc
	elements = doc.xpath("//table//tr//td")
	print("There are #{elements} items:")
	i = 0
	j = 0
	k = 0
	l = 0
	maxmin = ''
	elements.each do |element|	
		maxmin = element.text.strip
		print maxmin
		i+=1
		out_line = ary_out.join(',')
		out_line += "\n"
		fo.write(out_line)
		printf "%-8s %11s %4s %6s %7s %1s\n", 
		ary_out[0], ary_out[1], ary_out[2], ary_out[3], ary_out[4], status,i
	end
	printf stock_name+'\n'
end
fo.close
fi.close
