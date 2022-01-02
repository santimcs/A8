cd \A8\ruby

del c:\A8\data\price.csv
ruby c:\A8\ruby\crt-prices-fm-p01.rb

del c:\A8\data\spd_dly.csv
ruby c:\A8\ruby\spread_crt.rb

cd \A8
C:\A8\importPrice.bat

