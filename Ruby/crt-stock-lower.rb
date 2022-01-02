require 'date'
load './my_utils.rb'

puts "Enter stock name"
stock_name = gets.chomp.upcase

file_in   = '..\data\Yearly-Price-by-Name.csv'
file_temp = '..\data\temp.csv'
file_out =  "c:\\A8\\csv\\#{stock_name}-lower.csv"

fi = File.open(file_in, "r")
ft = File.open(file_temp,"w") 
fi.each do |line|
    array = line.split(",")
    name = strip_comma(array[0])
    if (name == stock_name)
                out_line = array.join(",")
        #        out_line = out_line + "\n"
                puts out_line
                ft.write out_line
    end
end
ft.close

cntr = 0
name = ''
fm_date = ''
to_date = ''
fm_price = 0.0
to_price = 0.0
max_price = 0.0
min_price = 0.0
ttl_qty = 0
qty = 0
spreads = 0
ary_out = []

fi = File.open(file_temp, "r")
fo = File.open(file_out,"w")

fi.each do |line|
    array = line.split(",")
	name = strip_comma(array[0])	
	date = strip_comma(array[1])		
	price = strip_comma(array[2]).to_f
	maxp = strip_comma(array[3]).to_f
	minp = strip_comma(array[4]).to_f
	qty = strip_comma(array[5]).to_i

 	cntr = cntr + 1

 	if (cntr == 1)
		fm_date = date
		to_date = date
		fm_price = price
		to_price = price
		max_price = maxp
		min_price = minp
		ttl_qty = qty
	end

	if (cntr > 1)	
        if (fm_price.to_f == to_price.to_f)
            max_price = maxp
            min_price = minp
        end
        printf "%10s %6.2f %6.2f %6.2f %13s max-min %6.2f %6.2f from-to %6.2f %6.2f %13s\n",
        date, price, maxp, minp, commas(qty), 
        max_price, min_price, fm_price, to_price, commas(ttl_qty)

		if (price.to_f <= to_price.to_f)
			to_date = date
			to_price = price		
		end

		if (price.to_f > to_price.to_f)

			if (fm_price.to_f > to_price.to_f)
				fm_date = Date.parse(fm_date)
				ary_out[0] = name
				ary_out[1] = fm_date
				to_date = Date.parse(to_date)	
				ary_out[2] = to_date				

				ary_out[3] = num_of_days(fm_date,to_date)
				ary_out[4] = fm_price
				ary_out[5] = to_price
				ary_out[6] = (to_price.to_f - fm_price.to_f).round(2)
				ary_out[7] = ((to_price.to_f - fm_price.to_f)/fm_price.to_f*100).round(2)
				spreads = num_of_spread(fm_price,to_price)
				ary_out[8] = spreads.round
				ary_out[9] = (ary_out[8]/ary_out[3]).round
				ary_out[10] = max_price
				ary_out[11] = min_price
				ary_out[12] = ttl_qty

    			out_line = ary_out.join(",")
				out_line = out_line + "\n"
				puts out_line
    			fo.write out_line
                max_price = 0.0
                min_price = 999.99    
                maxp = 0.0
                minp = 999.99     

    		end
    		ttl_qty = 0
			fm_date = date
			to_date = date
			fm_price = price
			to_price = price   
		#	max_price = maxp
		#	min_price = minp		
            qty = 0
		end 	

        if (maxp.to_f > max_price.to_f)
            max_price = maxp
        end
        if (minp.to_f < min_price.to_f)
            min_price = minp
        end

		ttl_qty = ttl_qty + qty
	end
            
 end    # enf of file 

 				ary_out[0] = name
               fm_date = Date.parse(fm_date)
				ary_out[1] = fm_date
				to_date = Date.parse(to_date)	
				ary_out[2] = to_date				
				ary_out[3] = num_of_days(fm_date,to_date)
				ary_out[4] = fm_price
				ary_out[5] = to_price
				ary_out[6] = (to_price.to_f - fm_price.to_f).round(2)
				ary_out[7] = ((to_price.to_f - fm_price.to_f)/fm_price.to_f*100).round(2)
				spreads = num_of_spread(fm_price,to_price)
				if spreads
					ary_out[8] = spreads.round
				else
			 		ary_out[8] = 0
				end
				if ary_out[3] != 0
					ary_out[9] = (ary_out[8]/ary_out[3]).round
				else
					ary_out[9] = 0
				end
				ary_out[10] = max_price
				ary_out[11] = min_price
			#	ary_out[12] = ttl_qty
                ary_out[12] = qty
    			out_line = ary_out.join(",")
				out_line = out_line + "\n"

				if (ary_out[6] != 0)
					puts out_line
    				fo.write out_line
    			end
               
 fo.close
 fi.close