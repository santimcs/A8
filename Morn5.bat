copy .\data\stocks.csv c:\ruby\portmy\db\
copy .\data\consensus.csv c:\ruby\portmy\db\

cd\ruby\portmy

rails runner db/crt_all.rb