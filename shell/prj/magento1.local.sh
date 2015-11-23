#!/usr/bin/env bash
PROJECT=magento1.local
DB=magento1
USER=magento1
PW=magento1

# db for project
# --------------------
mysql -uroot -proot -e "CREATE DATABASE IF NOT EXISTS ${DB} CHARACTER SET utf8 COLLATE utf8_general_ci"
mysql -uroot -proot -e "CREATE USER '${USER}'@'localhost' IDENTIFIED BY '${PW}'"
mysql -uroot -proot -e "GRANT USAGE ON *.* TO '${USER}'@'localhost' IDENTIFIED BY '${PW}' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON ${DB}.* TO '${USER}'@'localhost' WITH GRANT OPTION"
mysql -uroot -proot -e "FLUSH PRIVILEGES"

# magento deploy files
#---------------------
if [ ! -d /home/vagrant/servers/${PROJECT}/htdocs ]
then
    cd /home/vagrant/servers/${PROJECT}
    composer install
fi