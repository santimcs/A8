cd\A8\ruby

ruby crt-consensus-fm-iaa.rb

copy c:\a8\data\consensus.csv c:\ruby\portpg\db\

cd\ruby\portpg

rails runner db/crt_consensus.rb