# encoding: utf-8
require 'nokogiri'
require 'open-uri'
load './my_utils.rb'

process = ARGV.shift
inp_digit = process[0].to_i
pls_digit = inp_digit * 1
mns_digit = inp_digit * -1

file_in   = '..\data\stocks-all.csv'
arr_in = []
ary_out = []

fi = File.open(file_in, "r")
while true do
    puts "Name     S   Price   Diff  Percent     Name"
    puts "-------------------------------------------"

    fi.each do |line|
        arr_in = line.split(",")
        stock_name = arr_in[0]  
        status = arr_in[1].strip
        market = arr_in[2].strip        
        # stock name
        ary_out[0] = arr_in[0]  
        ary_out[1] = status
        ary_out[9] = market
        url = "http://www.settrade.com/C04_01_stock_quote_p1.jsp?txtSymbol=#{stock_name}&ssoPageId=9&selectPage=1"
        html_data = open(url).read
        doc = Nokogiri::HTML(html_data)

        elements = doc.xpath("//h1")
        i = 0
        pct = ''
        digit = ''
        elements.each do |element|
            i += 1		
            case i
                when 2
                    ary_out[2] = element.text.strip   # Last trade             
  	            when 3
  		            ary_out[3] = element.text.strip # Price Change
                when 4
                    ary_out[4] = element.text.strip  # Percent Change
                    pct = element.text.strip  # Percent Change                    
  	        end
        end
        ary_out[5] = ary_out[4].length
        sign = pct[0]
        # digit = pct[1,2].to_i
        if (sign != '0')
            digit = pct[1...-1].to_f
        end
        # determine trend
        diff = ary_out[8].to_f

        show = true
        #  puts show
        if (sign != '0')
        if (digit >= pls_digit || digit <= mns_digit)
      
            printf "%-8s %1s  %6.2f %6.2f %8s %8s %-6s\n",
            ary_out[0],ary_out[1],ary_out[2],ary_out[3],ary_out[4],ary_out[0],ary_out[9]

        end
    	end
        sleep(1)
    end

# ary_out[0] = Stock Name          
# ary_out[1] = From Date
# ary_out[2] = Uninitialized
# ary_out[3] = From Price
# ary_out[4] = Price Change              
# ary_out[5] = Shares              
# ary_out[6] = Max Price    
# ary_out[7] = Min Price
# ary_out[8] = Percent Change
# ary_out[9] = Last Trade  
# ary_out[10] = Uninitialized
# ary_out[11] = Open Price     

    items = 0
    plus = 0
    sleep(60)
    fi.rewind

end
fi.close