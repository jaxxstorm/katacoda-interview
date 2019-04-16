#!/bin/bash

apt-get update
apt install -y redis
echo "I SHOULD NOT BE HERE" >> /etc/redis/redis.conf
curl https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz -o /tmp/webapp.tar.gz
echo "version=3" > /tmp/version
