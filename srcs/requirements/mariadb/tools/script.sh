#!bin/sh

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`"
mysql -e "CREATE USER '\`${MYSQL_USER}\`'@'%' IDENTIFIED by '\`${MYSQL_PASSWORD}\`';"
mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO '\`${MYSQL_USER}\`'@'%';"
mysql -e "FLUSH PRIVILEGES;"

service mysql stop

mysqld