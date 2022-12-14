del c:\\A8\\Data\\spd_dly.csv
ruby c:\\A8\\Ruby\\spread_crt.rb

mysqlimport --user root -p --local --fields-terminated-by="," --lines-terminated-by="\\r\\n" stock C:\\A8\\Data\\spd_Dly.csv

[[DL _Nite3 Batch]]
