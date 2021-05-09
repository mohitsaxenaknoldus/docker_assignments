#! /bin/sh
docker volume create clientvol
docker network create -d bridge --subnet=172.16.0.0/16 my-custom-network
docker build -t mohitsaxenaknoldus/capstoneclient:1.0 -f client/angular-websockets-client/Dockerfile ./client/angular-websockets-client
docker run -d --network=my-custom-network --ip 172.16.0.22 -p 4200:4200 -v clientvol:/clientdata --name client mohitsaxenaknoldus/capstoneclient:1.0
