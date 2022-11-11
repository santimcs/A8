Backup Process

cd\AAB\data
1) mysql

ruby db_backup.rb portfolio_development Sep
ruby db_backup.rb stock Sep
ruby db_backup.rb music_development Sep

ruby db_backup.rb formula1_development Sep
ruby db_backup.rb nfl_development Sep
ruby db_backup.rb UCL_development Sep

2) postgres password = admin
pg_dump -U postgres -W -c portpg_development > portpg.sql
pg_dump -U postgres -W -c BBB_development > BBB.sql
pg_dump -U postgres -W -c songs-to-remember_development > songs-to-remember.sql

pg_dump -U postgres -W -c Badminton_development > Badminton.sql
pg_dump -U postgres -W -c pl-2016_development > pl-2016.sql
pg_dump -U postgres -W -c Snooker_development > Snooker.sql
pg_dump -U postgres -W -c Tennis_development > Tennis.sql
pg_dump -U postgres -W -c wc18_development > wc18.sql
pg_dump -U postgres -W -c wc-uefa_development > wc-uefa.sql

3) sqlite
/*=== Active programs ===*/
copy G:\ruby\expense\db\development.sqlite3 G:\AAB\data\expense
copy G:\ruby\pj-all\db\development.sqlite3 G:\AAB\data\pj-all
copy G:\ruby\pj-react\db\development.sqlite3 G:\AAB\data\pj-react
copy G:\ruby\port_lite\db\development.sqlite3 G:\AAB\data\port_lite
copy G:\ruby\portlt\db\development.sqlite3 G:\AAB\data\portlt
copy G:\ruby\portmy\db\development.sqlite3 G:\AAB\data\portmy

/*=== Inactive programs ===*/
copy G:\ruby\program\db\development.sqlite3 G:\AAB\data\program
copy G:\ruby\volleyball\db\development.sqlite3 G:\AAB\data\volleyball
copy G:\ruby\website\db\development.sqlite3 G:\AAB\data\website
copy G:\ruby\documentation\db\development.sqlite3 G:\AAB\data\documentation
copy G:\ruby\TV\db\development.sqlite3 G:\AAB\data\TV
copy G:\ruby\sitepoint\db\development.sqlite3 G:\AAB\data\sitepoint

Restore process
===============
MySQL
cd\AAB\data
mysql -u root -p stock < stock_Sep.sql
mysql -u root -p portfolio_development < portfolio_development_Sep.sql
mysql -u root -p music_development < music_development_Sep.sql
mysql -u root -p nfl_development < nfl_development_Sep.sql
mysql -u root -p ucl_development < ucl_development_Sep.sql
mysql -u root -p bookstore_development < bookstore_development_Sep.sql

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
copy G:\AAB\data\port_lite\development.sqlite3 G:\ruby\port_lite\db\development.sqlite3
copy G:\AAB\data\portlt\development.sqlite3 G:\ruby\portlt\db\development.sqlite3
copy G:\AAB\data\portmy\development.sqlite3 G:\ruby\portmy\db\development.sqlite3
copy G:\AAB\data\expense\development.sqlite3 G:\ruby\expense\db\development.sqlite3
copy G:\AAB\data\program\development.sqlite3 G:\ruby\program\db\development.sqlite3
copy G:\AAB\data\website\development.sqlite3 G:\ruby\website\db\development.sqlite3
copy G:\AAB\data\documentation\development.sqlite3 G:\ruby\documentation\db\development.sqlite3
copy G:\AAB\data\tv\development.sqlite3 G:\ruby\tv\db\development.sqlite3
copy G:\AAB\data\sitepoint\development.sqlite3 G:\ruby\sitepoint\db\development.sqlite3
copy G:\AAB\data\yt\development.sqlite3 G:\ruby\yt\db\development.sqlite3
copy G:\AAB\data\yt1\development.sqlite3 G:\ruby\yt1\db\development.sqlite3
