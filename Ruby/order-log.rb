# encoding: utf-8
require 'nokogiri'
require 'open-uri'
load './my_utils.rb'

def number_of_spread(minp,maxp)
    div = 0.0 # divider for calculating the number of spreads
    gap = 0.0 # gap between minp and maxp
    spd = 0   # number of spreads
    
    # If maxp is greater than minp, calculate the gap and set mult to 1.
    # Otherwise, swap the values of minp and maxp, and set mult to -1.
    if (maxp > minp) 
        gap = maxp - minp # gap = max price - minimum price
        mult = 1 # multiplier for adjusting the result based on the order of minp and maxp
    else
        tmpp = minp
        minp = maxp
        maxp = tmpp
        gap  = maxp - minp
        mult = -1
    end
    
    # If the gap is not 0, enter a case statement to determine the number of spreads
    # based on the range that maxp falls into.
    if gap != 0
        case maxp
            # Calculate the number of spreads using a divisor of 0.01.
            when 0.00..2.00 then 
            begin
                div = 0.01 
                spd = (gap/div).round()
            end
            # Calculate the number of spreads using a divisor of 0.02.
            # If minp is less than the boundary value (2.00), calculate the number of spreads
            # in two parts: between minp and the boundary value, and between the boundary value and maxp.
            when 2.02..5.00 then 
            begin
                div = 0.02
                boundary = div * 100
                if minp < boundary
                    spd = (boundary - minp) / 0.01
                    spd += (maxp - boundary) / div
                else
                    spd = (gap/div).round()
                end
            end      
            # Calculate the number of spreads using a divisor of 0.05.
            # If minp is less than the boundary value (5.00), calculate the number of spreads
            # in two parts: between minp and the boundary value, and between the boundary value and maxp.
            when 5.05..10.00 then  
            begin
                div = 0.05
                boundary = div * 100
                if minp < boundary
                    spd1 = ((boundary - minp) / 0.02).round()
                    spd2 = ((maxp - boundary) / div).round()
                    spd = spd1 + spd2                      
                    # spd = (boundary - minp) / 0.02
                    # spd += (maxp - boundary) / div
                else
                    spd = (gap/div).round()
                end            
            end      
            # Calculate the number of spreads using a divisor of 0.10.
            # If minp is less than the boundary value (10.00), calculate the number of spreads
            # in two parts: between minp and the boundary value, and between the boundary value and maxp.
            when 10.10..25.00 then 
            begin
                div = 0.10
                boundary = div * 100

                if minp < boundary    #continue
                    # spd = (boundary - minp) / 0.05
                    # spd += (maxp - boundary) / div
                    spd1 = ((boundary - minp) / 0.05).round()
                    spd2 = ((maxp - boundary) / div).round()
                    spd = spd1 + spd2
                else
                    spd = (gap/div).round()
                end          
            end   
            when 25.25..100.00 then 
            begin
                div = 0.25
                boundary = div * 100
                if minp < boundary
                    spd1 = ((boundary - minp) / 0.10).round()
                    spd2 = ((maxp - boundary) / div).round()
                    spd = spd1 + spd2
                else
                    spd = (gap/div).round()
                end            
            end    
            when 100.50..200.00 then 
            begin
                div = 0.50
                boundary = div * 200
                if minp < boundary
                    spd1 = ((boundary - minp) / 0.25).round()
                    spd2 = ((maxp - boundary) / div).round()
                    spd = spd1 + spd2
                else
                    spd = (gap/div).round()
                end             
            end      
            when 201.00..400.00 then 
            begin
                div = 1.00
                boundary = div * 200                
                if minp < boundary
                    spd1 = ((boundary - minp) / 0.50).round()
                    spd2 = ((maxp - boundary) / div).round()
                    spd = spd1 + spd2
                else
                    spd = (gap/div).round()
                end            
            end   
            else 
            begin
                div = 2.00
                boundary = div * 200
                if minp < boundary
                    spd1 = ((boundary - minp) / 1.00).round()
                    spd2 = ((maxp - boundary) / div).round()
                    spd = spd1 + spd2
                else
                    spd = (gap/div).round()
                end            
            end         
        end 
    end
    spreads = (spd * mult).to_i
    return spreads
end

file_in   = '..\data\orders.csv'
file_out   = '..\data\orders-log.csv'
file_out2   = 'C:\Users\User\Dropbox\orders-log.csv'
# ary_in[0] = Trade          
# ary_in[1] = Stock Name 
# ary_in[2] = Qty
# ary_in[3] = Price  
# ary_in[4] = Active 
# ary_in[5] = Reason
# ary_in[6] = Market
# ary_in[7] = xdate
ary_in = []
ary_out = []
# ary_out[0] = Trade          
# ary_out[1] = Stock Name 
# ary_out[2] = Number of Spreads
# ary_out[3] = Reason    
# ary_out[4] = Market    
# ary_out[5] = Qty
# ary_out[6] = Order Price 
# ary_out[7] = Last Trade          
# ary_out[8] = Price Change
# ary_out[9] = Percent Change
# ary_out[10] = Active      
# ary_out[11] = xdate

order_price = 0
last_trade = 0
jjj = 0

fo = File.open(file_out, "w")
fp = File.open(file_out2, "w")
fi = File.open(file_in, "r")

fi.each do |line|

    if (jjj == 0) # 1st record of orders.csv is header
        hdr_line ='trade,name,spd,reason,market,qty,target,current,change,percent,active,xdate' + "\n"
        fo.write hdr_line
        fp.write hdr_line
        puts hdr_line
    end   

    if (jjj > 0)  # from 2nd record of orders.csv onward is data
        ary_in = line.split(",")
        stock_name = ary_in[1]  
        trade = ary_in[0].strip
        ary_out[0] = ary_in[0]  
        ary_out[1] = ary_in[1]
        ary_out[2] = 0 # spreads      
        ary_out[3] = ary_in[5]    
        ary_out[4] = ary_in[6].strip   
        ary_out[5] = ary_in[2]  
        order_price = ary_in[3]  
        ary_out[6] = order_price    
        ary_out[7] = 0.00 # Last trade
        ary_out[8] = 0.00 # Price Change        
        ary_out[9] = '0.00%' # Percent Change    
        active = ary_out[10].to_i                     
        ary_out[10] = ary_in[4]
        ary_out[11] = ary_in[7].strip
  
        url = "http://classic.settrade.com/C04_01_stock_quote_p1.jsp?txtSymbol=#{stock_name}&ssoPageId=9&selectPage=1"
        html_data = open(url).read
        doc = Nokogiri::HTML(html_data)

        elements = doc.xpath("//h1")

        i = 0
        elements.each do |element|

            i += 1		
            case i

                when 2
                    ary_out[7] = element.text.strip   # Last trade     
                    last_trade = element.text.strip   # Last trade                                 
                when 3
                    ary_out[8] = element.text.strip # Price Change
                when 4
                    ary_out[9] = element.text.strip  # Percent Change
                    
            end

        end

        ary_out[2] = number_of_spread(last_trade.to_f,order_price.to_f)
        out_line = ary_out.join(',') 
        out_line += "\n"
        puts out_line
        fo.write out_line
        fp.write out_line

    end

    jjj += 1
    sleep(1)

end

fi.close