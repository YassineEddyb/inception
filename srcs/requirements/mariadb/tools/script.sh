#!bin/sh

mysql -e "USE mysql;"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "DELETE FROM mysql.user WHERE User='';"
mysql -e "DROP DATABASE test;"
mysql -e "DELETE FROM mysql.db WHERE Db='test';"
mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootpass';"
mysql -e "CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_general_ci;"
mysql -e "CREATE USER 'yed-dyb'@'%' IDENTIFIED by 'wppass';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'yed-dyb'@'%';"
mysql -e "FLUSH PRIVILEGES;"

/usr/bin/mysqld --skip-log-error