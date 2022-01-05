 file_in = 'c:\A8\data\price.csv'
 file_out = 'c:\A8\data\spd_dly.csv'
 file = File.open(file_in, "r")
 fo = File.open(file_out,"w")
 
 file.each do |line|
    ary = line.split("|")
    name = ary[0]
    date = ary[1]
    price = ary[2].to_f
    maxp = ary[3].to_f
    minp = ary[4].to_f
    opnp = ary[6].to_f    
    qty = ary[5].to_i
    div = 0.0
    gap = maxp - minp
    case maxp
    	when 0.00..2.00 then 
        begin
          div = 0.01 
          spd = gap/div
          up_spd = (maxp - price)/div
        end
    	when 2.02..5.00 then 
        begin
    			div = 0.02
    			if minp < (div * 100)
    			   spd = ((div * 100) - minp) / 0.01
    			   spd += (maxp - (div * 100)) / div
    			else
    			   spd = gap/div
          end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 0.01
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end  
    		end      
    	when 5.05..10.00 then  
        begin
    			div = 0.05
    			if minp < (div * 100)
    			   spd = ((div * 100) - minp) / 0.02
    			   spd += (maxp - (div * 100)) / div
    			else
    			   spd = gap/div
           end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 0.02
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end             
    		end      
    	when 10.10..25.00 then 
    		begin
    			div = 0.10
    			if minp < (div * 100)
    			   spd = ((div * 100) - minp) / 0.05
    			   spd += (maxp - (div * 100)) / div
    			else
    			   spd = gap/div
           end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 0.05
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end           
    		end   
    	when 25.25..100.00 then 
    		begin
    			div = 0.25
    			if minp < (div * 100)
    			   spd = ((div * 100) - minp) / 0.10
    			   spd += (maxp - (div * 100)) / div
    			else
    			   spd = gap/div
           end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 0.10
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end             
    		end    
    	when 100.50..200.00 then 
    		begin
    			div = 0.50
    			if minp < (div * 100)
    			   spd = ((div * 100) - minp) / 0.25
    			   spd += (maxp - (div * 100)) / div
    			else
    			   spd = gap/div
           end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 0.25
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end             
    		end      
    	when 201.00..400.00 then 
    		begin
    			div = 1.00
    			if minp < (div * 200)
    			   spd = ((div * 200) - minp) / 0.50
    			   spd += (maxp - (div * 200)) / div
    			else
    			   spd = gap/div
           end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 0.50
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end             
    		end   
    	else 
    		begin
    			div = 2.00
    			if minp < (div * 200)
    			   spd = ((div * 200) - minp) / 1.00
    			   spd += (maxp - (div * 200)) / div
    			else
    			   spd = gap/div
           end
    			if price < (div * 100)
    			   up_spd = ((div * 100) - price) / 1.00
    			   up_spd += (maxp - (div * 100)) / div
    			else
    			   up_spd = (maxp - price)/div
           end             
    		end         
    end	

       dw_spd = spd - up_spd

#    puts name
#    puts maxp
#    puts minp
#    puts gap
#    puts spd.round
    
    out_array = []
    out_array[0] = name
    out_array[1] = date    
    out_array[2] = price
    out_array[3] = maxp
    out_array[4] = minp
    out_array[5] = gap
    out_array[6] = spd.round
    out_array[7] = up_spd.round
    out_array[8] = dw_spd.round   
    out_array[9] = qty   
    out_array[10] = opnp

    out_line = out_array.join(",")
    out_line = out_line + "\n"
    puts out_line
    fo.write out_line
 end

