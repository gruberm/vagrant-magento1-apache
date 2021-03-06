#!/usr/bin/env bash

# phpmyadmin
# --------------------
PROJECT=magento1-phpmyadmin.local

if [ ! -d /usr/share/phpmyadmin ]
then
    apt-get -q -y install phpmyadmin
fi

if [ ! -d /home/vagrant/servers/magento1-phpmyadmin.local ]
then
    mkdir -p /home/vagrant/servers/${PROJECT}
    ln -s /usr/share/phpmyadmin/ /home/vagrant/servers/${PROJECT}/htdocs
fi