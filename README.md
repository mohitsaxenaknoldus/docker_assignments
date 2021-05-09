# Docker Capstone Assignment

This is my dockerized version of an existing application: https://github.com/g00glen00b/spring-boot-angular-websockets

## How To Run?

1) git clone https://github.com/mohitsaxenaknoldus/docker_assignments.git
2) Open in your favorite IDE
3) First run fileclient.sh
4) Then run fileserver.sh
5) Now, you will have two containers running. docker ps to verify

## How To Exec into the containers?

docker exec -it <container_id> bash

## Volumes

The script files are creating and using volumes using the following command:

docker volume create servervol
docker run -d --network=my-custom-network -p 8080:8080 -v servervol:/serverdata --name server mohitsaxenaknoldus/capstoneserver:1.0

