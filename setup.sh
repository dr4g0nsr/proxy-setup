#!/bin/bash

DEBIAN=noninteractive

cd /root

if [ -f /root/proxy-setup/setup.lock ]; then
   echo "Lock found, doing second part"
   echo ""
   cd /root/proxy-setup
   docker-compose up -d
   exit 0
fi

apt-get update > /dev/null
apt-get upgrade -y > /dev/null
apt-get install docker.io > /dev/null
wget https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64 -o /dev/null
mv docker-compose-Linux-x86_64 /usr/bin/docker-compose && chmod 777 /usr/bin/docker-compose
echo "1" > /root/proxy-setup/setup.lock
echo "Rebooting..."
echo ""
echo "When server is back run setup.sh again"
reboot
