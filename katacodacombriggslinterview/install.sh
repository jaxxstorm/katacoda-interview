#!/bin/bash

apt-get update
apt install -y redis-server
systemctl stop redis-server
echo "I should not be here" >> /etc/redis/redis.conf

echo "======"
echo "Installing webapp"
echo "======"

curl https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz -o /tmp/webapp.tar.gz
mkdir -p /var/www/webapp
tar zxvf /tmp/webapp.tar.gz -C /var/www/webapp
useradd webapp -d /var/www/webapp

cat << EOF > /lib/systemd/system/webapp.service
[Unit]
Description=webapp
Wants=basic.target
After=basic.target network.target redis-server.target

[Service]
ExecStart=/var/www/webapp/dist/example-webapp-linux
WorkingDir=/var/www/webapp
KillMode=process

[Install]
WantedBy=multi-user.target
EOF

chown -R webapp:webapp /var/www/webapp/dist

echo "version=5" > /tmp/version
