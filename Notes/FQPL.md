Do only once per quarter (except when want to include irregular quarter stock or new stock)
==============================================================================
1) When companies begin to issue form F45 for new quarter, 
empty fqpl table in my_port_development and
modify query Select_Previous_4_Quarters to cover previous four quarters profit/loss. 
(Create fqpl table with stocks with EXACT previous 4 quarters profit/loss)

2.1) Modify & run query Crt_FQPL_trans to cover previous four quarters profit/loss. 
2.2) Export data to AAA\RUBY\FQPL_Trans.csv (Text Qualifier must be none & 
must delete column header).

3) Run program FQPL10.rb to create FQPL_Mast.csv from FQPL_Trans.csv.
4) Run program FQPL20.rb to create FQPL_Mast.JSON from FQPL_Mast.CSV.
--------------------------------------------------------------------------

Do whenever there is new F45.
=============================
5.1) Run query Select_Latest_Quarter.
5.2) Export data to AAA\RUBY\Latest_Quater.csv (Text Qualifier must be none & 
must delete column header).

6) Run program FQPL30.rb to display and create FQPL_Pct.csv for 
   increasing/decreasing percent of
   lastest 4 quarters comparing with previous 4 quarters. 

7) Run program FQPL40.rb with Quarter argument in format Q9 to create 
 \ruby\port_lite\db\profits.csv from FQPL_Pct.csv

8) CD\RUBY\PORT_LITE
9) rails runner db/crt_profits.rb
to insert or update data to table profits