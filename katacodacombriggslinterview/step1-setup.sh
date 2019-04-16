#!/bin/bash

echo "I SHOULD NOT BE HERE" >> /etc/redis/redis.conf
systemctl stop redis-server
