require 'nokogiri'
require 'open-uri'
require 'cgi'
load './my_utils.rb'

pages_str = ARGV.shift
pages_nbr = pages_str.to_i

file_in   = 'c:\A8\data\name-xtr.csv'
file_out = 'c:\A8\data\price\price.csv'

fo = File.open(file_out,"w") 
fi = File.open(file_in, "r")

fi.each do |line|
    stock_name = CGI.escape(line.chomp)

    page = 0
    offset = 0

    while (page < pages_nbr)
        
        url = "http://classic.settrade.com/C04_02_stock_historical_p1.jsp?txtSymbol=#{stock_name}&ssoPageId=10&selectPage=2&max=15&offset=#{offset}"
        html_data = open(url).read
        doc = Nokogiri::HTML(html_data)

        array = []
        ary_out = []
        # array[0] = stock_name.upcase
        ary_out[0] = stock_name.upcase
        ary_out[1] = DateTime.now.strftime('%Y-%m-%d')  

        tables = doc.css('table.table-info.table-hover')
        rows = tables.css('tr')
        i = 0
        rows.each do | row |
            if (i > 0)
                cols = row.css('td')
                j = 0
                cols.each do | col |
                #   puts j.to_s + ' ' + col.text
                    array[j] = col.text.strip
                    j += 1
                end # end of col

                
                if (array[5] != '-')
                    ary_dat = array[0].split('/') 
                    day = ary_dat[0]
                    month = ary_dat[1]
                    year = '20' + ary_dat[2]

                    ary_out[1] = year + '-' + month + '-' + day

                    ary_out[2] = array[5]
                    ary_out[3] = array[2]
                    ary_out[4] = array[3]
                    qty_float = strip_comma(array[8]).to_f
                    qty_int = (qty_float * 1000).to_i
                    ary_out[5] = qty_int
                    ary_out[6] = array[1]

                    printf "%10s %8s %6.2f %6.2f %6.2f %10s %6.2f\n", 
                    ary_out[0],ary_out[1],ary_out[2],ary_out[3],ary_out[4],ary_out[5],ary_out[6]
                    sleep(1)
                    out_line = ary_out.join(',')
                    out_line = out_line + "\n"
                    fo.write(out_line)
                end
            end # i > 0
            i += 1
        end # end of row
        page += 1
        offset = page * 15
    end # end of while
end # end of line

fo.close
fi.close
