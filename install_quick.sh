#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
apt update
apt install docker docker-compose
docker build -t byedpi .   
docker run -d --name=byedpi --restart always -p 999:999 byedpi
docker ps
echo "done"
