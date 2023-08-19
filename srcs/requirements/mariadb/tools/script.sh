#!bin/sh

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_DATABASE"
mysql -e "CREATE DATABASE IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DB_DATABASE}\`.* TO \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"

service mysql stop

mysqld