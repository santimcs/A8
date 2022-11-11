Backup Process

cd\A8\data

1. mysql

ruby db_backup.rb portfolio_development Nov-01
ruby db_backup.rb stock Nov-01

ruby db_backup.rb music_development Nov-01
ruby db_backup.rb formula1_development Nov-01
ruby db_backup.rb nfl_development Nov-01
ruby db_backup.rb UCL_development Nov-01

2. postgres password = admin

pg_dump -U postgres -W -c portpg_development > portpg.sql

pg_dump -U postgres -W -c Badminton_development > Badminton.sql
pg_dump -U postgres -W -c BBB_development > BBB.sql
pg_dump -U postgres -W -c Snooker_development > Snooker.sql

3. sqlite

copy c:\ruby\pj-all\db\development.sqlite3 c:\A8\data\pj-all
copy c:\ruby\pj-web\db\development.sqlite3 c:\A8\data\pj-web
copy c:\ruby\pj-react\db\development.sqlite3 c:\A8\data\pj-react
copy c:\ruby\expense\db\development.sqlite3 c:\A8\data\expense
copy c:\ruby\port_lite\db\development.sqlite3 c:\A8\data\port_lite
copy c:\ruby\portlt\db\development.sqlite3 c:\A8\data\portlt
copy c:\ruby\portmy\db\development.sqlite3 c:\A8\data\portmy

copy c:\ruby\program\db\development.sqlite3 c:\A8\data\program
copy c:\ruby\volleyball\db\development.sqlite3 c:\A8\data\volleyball
copy c:\ruby\website\db\development.sqlite3 c:\A8\data\website
copy c:\ruby\documentation\db\development.sqlite3 c:\A8\data\documentation
copy c:\ruby\TV\db\development.sqlite3 c:\A8\data\TV
copy c:\ruby\sitepoint\db\development.sqlite3 c:\A8\data\sitepoint

# Restore process

MySQL
cd\A8\data
mysql -u root -p stock < stock_Nov-01.sql
mysql -u root -p portfolio_development < portfolio_development_Nov-01.sql
mysql -u root -p music_development < music_development_Nov-01.sql
mysql -u root -p nfl_development < nfl_development_Nov-01.sql
mysql -u root -p ucl_development < ucl_development_Nov-01.sql
mysql -u root -p bookstore_development < bookstore_development_Nov-01.sql

Postgres
psql -U postgres portpg_development < portpg.sql

psql -U postgres Badminton_development < Badminton.sql
psql -U postgres BBB_development < BBB.sql
psql -U postgres pl-2016_development < pl-2016.sql
psql -U postgres Snooker_development < Snooker.sql
psql -U postgres songs-to-remember_development < songs-to-remember.sql
psql -U postgres Tennis_development < Tennis.sql
psql -U postgres wc18_development < wc18.sql
psql -U postgres wc-uefa_development < wc-uefa.sql

SQLite
copy c:\A8\data\port_lite\development.sqlite3 c:\ruby\port_lite\db\development.sqlite3
copy c:\A8\data\portlt\development.sqlite3 c:\ruby\portlt\db\development.sqlite3
copy c:\A8\data\portmy\development.sqlite3 c:\ruby\portmy\db\development.sqlite3
copy c:\A8\data\expense\development.sqlite3 c:\ruby\expense\db\development.sqlite3
copy c:\A8\data\program\development.sqlite3 c:\ruby\program\db\development.sqlite3
copy c:\A8\data\website\development.sqlite3 c:\ruby\website\db\development.sqlite3
copy c:\A8\data\documentation\development.sqlite3 c:\ruby\documentation\db\development.sqlite3
copy c:\A8\data\tv\development.sqlite3 c:\ruby\tv\db\development.sqlite3
copy c:\A8\data\sitepoint\development.sqlite3 c:\ruby\sitepoint\db\development.sqlite3
copy c:\A8\data\yt\development.sqlite3 c:\ruby\yt\db\development.sqlite3
copy c:\A8\data\yt1\development.sqlite3 c:\ruby\yt1\db\development.sqlite3
