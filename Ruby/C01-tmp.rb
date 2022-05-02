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

