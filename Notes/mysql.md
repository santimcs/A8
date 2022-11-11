2016-06-09 13:58:36 3856 [ERROR] InnoDB: Table ca2016_development/schema_migrations in the InnoDB data dictionary has tablespace id 281, but tablespace with that id or name does not exist. Have you deleted or moved .ibd files? This may also be a table created with CREATE TEMPORARY TABLE whose .ibd and .frm files MySQL automatically removed, but the table still exists in the InnoDB internal data dictionary.

To resolve above problem
========================
1) Delete file schema_migrations.ibd if exists.
2) Copy schema_migrations.frm to ca2016_development if not exists.
3) Run mysql
	mysql -u root -p ca2016_development
4) ALTER TABLE ca2016_development.schema_migrations DISCARD TABLESPACE;
5) DROP TABLE ca2016_development.schema_migrations;
Then create table schema_migrations with data from ruby\ca2016\db\migrate

From website
https://forums.cpanel.net/threads/innodb-corruption-repair-guide.418722/

To shutdown mysql from command line
mysqladmin -u root -p shutdown

To create database
mysql -u root -p
Enter password:
CREATE DATABASE stock;
USE stock;
quit;

To change date with number of days
UPDATE matchdays
SET date = DATE_ADD(date, INTERVAL 2 DAY)
SET date = DATE_SUB(date, INTERVAL 2 DAY)
