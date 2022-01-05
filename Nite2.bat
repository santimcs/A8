del c:\A8\data\spd_dly.csv
ruby c:\A8\ruby\spread_crt.rb

mysqlimport --user root -p --local --fields-terminated-by="," --lines-terminated-by="\r\n" stock C:\A8\data\Spd_Dly.csv