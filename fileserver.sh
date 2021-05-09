#! /bin/sh
docker volume create servervol
docker build -t mohitsaxenaknoldus/capstoneserver:1.0 -f server/spring-boot-websockets-api/Dockerfile ./server/spring-boot-websockets-api
docker run -d --network=my-custom-network -p 8080:8080 -v servervol:/serverdata --name server mohitsaxenaknoldus/capstoneserver:1.0


