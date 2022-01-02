require 'nokogiri'
require 'open-uri'
load './my_utils.rb'

file_in   = '..\data\daily-sales.csv'
file_out   = 'c:\ruby\port_lite\db\daily_out.csv'
file_out2   = 'c:\A8\data\daily_out.csv'
file_out3   = 'c:\Users\User\iCloudDrive\daily_out.csv'
file_out4   = 'c:\Users\User\Dropbox\daily_out.csv'

ary_inp = []
ary_out = []
ary_tmp = []
diff = 0
fo = File.open(file_out, "w")
fo2 = File.open(file_out2, "w")
fo3 = File.open(file_out3, "w")
fo4 = File.open(file_out4, "w")
fi = File.open(file_in, "r")

# ary_inp[0] = name
# ary_inp[1] = from date
# ary_inp[2] = to date
# ary_inp[3] = from price
# ary_inp[4] = to price
# ary_inp[5] = not use
# ary_inp[6] = shares
# ary_inp[7] = max price
# ary_inp[8] = min price
# ary_inp[9] = status B,I,O,S

puts "Name      From Date    To Date   From     To     Pct     Shares    Max    Min S Action"
fi.each do |line|
    ary_inp = line.split(",")
    stock_name = ary_inp[0]  
    fm_date = ary_inp[1]    
    to_date = ary_inp[2]    
    fm_price_old = ary_inp[3].to_f
    to_price_old = ary_inp[4].to_f
    trend = to_price_old - fm_price_old 
    max_price_old = ary_inp[7].to_f
    min_price_old = ary_inp[8].to_f
    status = ary_inp[9].strip
    ary_out[9] = ary_inp[9].strip

    # ary_out[0] = name
    # ary_out[1] = from date
    # ary_out[2] = to date
    # ary_out[3] = from price
    # ary_out[4] = to price
    # ary_out[5] = percent change
    # ary_out[6] = shares
    # ary_out[7] = max price
    # ary_out[8] = min price
    # ary_out[9] = status 

    # stock name  
    ary_out[0] = ary_inp[0]  
    # from date   
    ary_out[1] = ary_inp[1]
    # from price 
    ary_out[3] = ary_inp[3] 

    url = "http://www.settrade.com/C04_01_stock_quote_p1.jsp?txtSymbol=#{stock_name}&ssoPageId=9&selectPage=1"
    html_data = open(url).read
    doc = Nokogiri::HTML(html_data)

    elements = doc.xpath("//h1")
    i = 0
    elements.each do |element|
        i += 1		
        case i
  	        when 2
  		        ary_out[4] = element.text.strip # Last Trade
            when 3
                diff = element.text.strip.to_f   # Price change  
            when 4
                ary_out[5] = element.text.strip # Percent change
  	     end
    end

    elements = doc.xpath("//div[@class = 'flex-item text-left padding-8']/div/span[@class = 'colorGreen']")
    i = 0
    elements.each do |element|
        i += 1    
        if (i == 1)
            date_str, time_str = element.text.split(" ")
            #  puts date_str
            date_date = Date.parse(date_str)
            ary_out[2] = date_date
        end
    end
    tables = doc.css('table.table-info')
    rows = tables.css('tr')
    i = 0
    rows.each do | row |
        cols = row.css('td')
        cols.each do | col |
            i += 1
            #   puts i.to_s + ' ' + col.text
            ary_tmp[i] = col.text.strip
        end
    end
    # ary_tmp[2] = Prior
    # ary_tmp[4] = Open
    # ary_tmp[6] = High
    # ary_tmp[8] = Low
    # ary_tmp[12]= Shares  

    # ary_out[0] = name
    # ary_out[1] = from date
    # ary_out[2] = to date
    # ary_out[3] = from price
    # ary_out[4] = to price
    # ary_out[5] = percent change
    # ary_out[6] = shares
    # ary_out[7] = max price
    # ary_out[8] = min price
    # ary_out[9] = status     

    # max price    
    ary_out[7] = ary_tmp[6]  
    # min price    
	ary_out[8] = ary_tmp[8]
    #  No. of shares
    ary_out[6] = strip_comma(ary_tmp[12])


    max_price_new = ary_out[7].to_f  
    min_price_new = ary_out[8].to_f
    if (max_price_new >= max_price_old)
        ary_out[7] = max_price_new
    else
        ary_out[7] = max_price_old
    end
    if (min_price_new <= min_price_old)
        ary_out[8] = min_price_new
    else
        ary_out[8] = min_price_old
    end
    
    # determine trend
    # diff = ary_out[10].to_f
    if (trend >= 0)  # always higher, equal 0 is illogical 
        if (diff < 0)
            action = 'Insert'
        else
            action = 'Update'
        end
    else
        if (diff > 0)
            action = 'Insert'
        else
            action = 'Update'
        end    
    end
    if (action == 'Insert')
        ary_out[1] = to_date
        ary_out[3] = to_price_old
        ary_out[7] = max_price_new
        ary_out[8] = min_price_new
    end
    ary_out[10] = action
    # pct calculation
    pct = ary_out[4].to_f - ary_out[3].to_f
    pct = pct / ary_out[3].to_f * 100
    ary_out[5] = pct.round(2)

    if (ary_out[4] != '-')
        out_line = ary_out.join(',')
        out_line = out_line + "\n"
        fo.write out_line
        fo2.write out_line   
        fo3.write out_line   
        fo4.write out_line   

        printf "%-8s %10s %10s %6.2f %6.2f %7s %10d %6.2f %6.2f %s %6s\n",
        ary_out[0],ary_out[1],ary_out[2],ary_out[3],ary_out[4],
        ary_out[5],ary_out[6],ary_out[7],ary_out[8],ary_out[9],ary_out[10]
    end
    sleep(1)
end
fo.close
fo2.close
fo3.close
fo4.close
fi.close

    # ary_out[0] = name
    # ary_out[1] = from date
    # ary_out[2] = to date
    # ary_out[3] = from price
    # ary_out[4] = to price
    # ary_out[5] = percent change
    # ary_out[6] = shares
    # ary_out[7] = max price
    # ary_out[8] = min price
    # ary_out[9] = status  