#!/bin/bash

cd /root

if [ -f /root/proxy-setup/setup.lock ]; then
   echo "Lock found, doing second part"
   cd /root/proxy-setup
   docker-compose up -d
   exit 0
fi

apt update
apt upgrade -y
apt install docker.io
wget https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
mv docker-compose-Linux-x86_64 /usr/bin/docker-compose && chmod 777 /usr/bin/docker-compose
echo "1" > /root/proxy-setup/setup.lock
reboot
