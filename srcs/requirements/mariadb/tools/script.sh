#!bin/sh

service mysql start

mysql -e "CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_general_ci;"
# mysql -e "CREATE USER 'yed-dyb'@'%' IDENTIFIED by 'wppass';"
# mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'yed-dyb'@'%';"
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';"
# mysql -e "FLUSH PRIVILEGES;"

service mysql stop

mysqld