copy .\data\stocks.csv c:\ruby\portlt\db\
copy .\data\consensus.csv c:\ruby\portlt\db\

cd\ruby\portlt

rails runner db/crt_all.rb