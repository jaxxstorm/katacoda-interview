#!/bin/bash

apt-get update
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server
apt-get install -y apache2 mysql-server
systemctl start apache2
systemctl start mysql
echo "version=2" > /tmp/version
