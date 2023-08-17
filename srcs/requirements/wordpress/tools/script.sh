#!/bin/sh

wp core download --allow-root

cp wp-config-sample.php wp-config.php

sed -it "s/database_name_here/$MYSQL_DATABASE/g" wp-config.php
sed -it "s/username_here/$MYSQL_USER/g" wp-config.php
sed -it "s/password_here/$MYSQL_PASSWORD/g" wp-config.php
sed -it "s/localhost/$MYSQL_HOSTNAME/g" wp-config.php

wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php
php-fpm7.3 -F