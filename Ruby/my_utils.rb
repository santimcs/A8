def strip_comma(string)
	new_str = ''
	str = string
	str.each_byte do  |x| 
   		if ("#{x.chr}" != ',')
   			new_str = new_str + "#{x.chr}"
   		end
	end
	new_str.encode!("UTF-8")
	return new_str	
end

def commas(x)
    str = x.to_s.reverse
    str.gsub!(/([0-9]{3})/,"\\1,")
    str.gsub(/,$/,"").reverse
end

def num_of_spread(minp,maxp)
    div = 0.0
    gap = 0.0
    spd = 0
    if (maxp > minp) 
    	gap = maxp - minp
    	mult = 1
    else

    	maxp, minp = minp, maxp
    	gap  = maxp - minp
    	mult = -1
    end
    if gap != 0
    case maxp
    	when 0.00..2.00 then 
        begin
            div = 0.01 
            spd = gap/div
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
    	end         
    end	
	end
	return spd * mult
end

def num_of_days(d1,d2)
	days = 0
	while d1 < d2
		d1 = d1 + 1
		if d1.cwday < 6
			days = days + 1
		end
	end
	return days
end	

def separate_comma(number)
  a = number.to_s.split('')
  b = a.size/3.0
  if a.size < 4
     number.to_s 
  elsif a.size%3 == 0
    n = -4
    (b.to_i-1).times do |i|
      a.insert(n, ',')
      n -= 4
    end
     a.join("")
  else
      n = -4
    b.to_i.times do |i|
      a.insert(n, ',')
      n -= 4
    end
   a.join("")
  end
end