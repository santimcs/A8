cd\A8\ruby

ruby crt-stocks-fm-fs.rb

copy c:\a8\data\stocks.csv c:\ruby\portpg\db\
copy c:\a8\data\consensus.csv c:\ruby\portpg\db\

cd\ruby\portpg

rails runner db/crt_all.rb