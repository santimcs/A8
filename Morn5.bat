copy c:\a8\data\stocks.csv c:\ruby\portmy\db\
copy c:\a8\data\consensus.csv c:\ruby\portmy\db\

cd\ruby\portmy

rails runner db/crt_all.rb