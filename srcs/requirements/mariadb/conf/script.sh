#!/bin/bash

service mariadb start

sleep 2
mariadb -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

mariadb -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

mariadb -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

mariadb -e "FLUSH PRIVILEGES;"

mysqladmin -u root shutdown

exec mysqld_safe