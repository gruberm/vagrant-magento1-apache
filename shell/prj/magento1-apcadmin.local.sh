#!/usr/bin/env bash

# apcadmin
# --------------------
PROJECT=magento1-apcadmin.local

if [ ! -d /home/vagrant/servers/${PROJECT} ]
then
    git clone https://github.com/jithinjose2/APC-Admin.git /home/vagrant/servers/${PROJECT}/htdocs
fi