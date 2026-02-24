#!/bin/bash

mysql_install_db --user=mysql --datadir=/var/lib/mysql
mysqld --user=mysql &

while ! mysqladmin ping --silent; do
	sleep 1
done

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin shutdown

exec mysqld --user=mysql