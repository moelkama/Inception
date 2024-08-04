#!/bin/bash

while ! mariadb -h $MYSQLL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD;
    do
        echo "wordpress wait for conection with mariadb ..."
        sleep 3
    done

chmod 777 -R /var/www/wordpress
rm -f $WORDPRESS_PATH/wp-config.php

./wp-cli.phar config create --allow-root \
                            --dbname="$MYSQL_DATABASE" \
                            --dbuser="$MYSQL_USER" \
                            --dbpass="$MYSQL_PASSWORD" \
                            --dbhost="$MYSQLL_HOST" \
                            --path="$WORDPRESS_PATH"


./wp-cli.phar core install  --allow-root \
                            --path="$WORDPRESS_PATH" \
                            --admin_user="$WORDPRESS_ADMIN_USER" \
                            --admin_password="$WORDPRESS_ADMIN_PASS" \
                            --admin_email="$WORDPRESS_ADMIN_MAIL" \
                            --url="$URL" \
                            --title="$TITLE"

./wp-cli.phar user create   --allow-root \
                            "$WORDPRESS_USER" \
                            "$WORDPRESS_MAIL" \
                            --user_pass="$WORDPRESS_PASS" \
                            --role=$WORDPRESS_USER_ROLE \
                            --path="$WORDPRESS_PATH"

/usr/sbin/php-fpm7.4 -F