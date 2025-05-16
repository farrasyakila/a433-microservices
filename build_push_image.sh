#!/bin/bash

#membuat docker image
docker build -t item-app:v1 .

#melihat list docker image
docker image ls

#merubah nama image sesuai format dockerhub
docker tag item-app:v1 farrasyakila/item-app:v1

#login ke dockerhub
echo $PASSWORD_DOCKER_HUB | docker login -u farrasyakila --password-stdin

#push image ke dockerhub
docker push farrasyakila/item-app:v1
