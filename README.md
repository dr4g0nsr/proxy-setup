### Proxy setup
Full setup for proxy

# Automatic mode

```
chmod 777 ./setup.sh
./setup.sh
```
After this server will restart and you need to run setup.sh once again

# Manual mode

```
apt install -y docker.io
wget https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 /usr/bin/docker-compose && chmod 777 /usr/bin/docker-compose
docker-compose up -d
```

Change chap-secrets for pptp connection
