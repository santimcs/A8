copy c:\a8\data\stocks.csv c:\ruby\portlt\db\
copy c:\a8\data\consensus.csv c:\ruby\portlt\db\

cd\ruby\portlt

rails runner db/crt_all.rb