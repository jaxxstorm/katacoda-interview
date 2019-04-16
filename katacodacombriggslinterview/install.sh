#!/bin/bash

apt-get update
apt install -y redis-server

echo "======"
echo "Installing webapp"
echo "======"

curl https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz -o /tmp/webapp.tar.gz
mkdir -p /var/www/webapp
tar zxvf /tmp/webapp.tar.gz -C /var/www/webapp

echo "version=4" > /tmp/version
