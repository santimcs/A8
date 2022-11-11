mysql -h localhost -u root -p

CREATE USER 'cbuser'@'localhost' IDENTIFIED BY 'cbpass';
GRANT ALL ON cookbook.* TO 'cbuser'@'localhost';

CREATE DATABASE cookbook;
USE cookbook;
quit

cd\recipes\tables
mysql -u cbuser -p cookbook < limbs.sql

mysql --help
Default options are read from the following files in the given order:
C:\WINDOWS\my.ini C:\WINDOWS\my.cnf C:\my.ini C:\my.cnf C:\xampp\mysql\my.ini C:\xampp\mysql\my.cnf

To find out which options the mysql program will read from option files, use this command:
mysql --print-defaults

my_print_defaults client mysqldump

SELECT NOW();
SELECT NOW()\g

SHOW FULL COLUMNS FROM limbs LIKE 'thing'\G

mysql -e "SELECT COUNT(*) FROM limbs" cookbook
mysql -e "SELECT COUNT(*) FROM limbs;SELECT NOW()" cookbook

mysql cookbook < limbs.sql
source limbs.sql;
\. limbs.sql;

echo "SELECT * FROM limbs WHERE legs=0" | mysql cookbook
mysql -H -e "SELECT * FROM limbs WHERE legs=0" cookbook
mysql -H -e "SELECT * FROM limbs WHERE legs=0" cookbook > limbs.html
mysql -X -e "SELECT * FROM limbs WHERE legs=0" cookbook
mysql --skip-column-names -e "SELECT arms FROM limbs" cookbook | summarize

mysql> SELECT @max_limbs := MAX(arms+legs) FROM limbs;
SELECT * FROM limbs WHERE arms+legs = @max_limbs;
SELECT @last_id := LAST_INSERT_ID();
SELECT @name := thing FROM limbs WHERE legs = 0;
SELECT @name;
SELECT @name2 := thing FROM limbs WHERE legs < 0;
SELECT @name2;
