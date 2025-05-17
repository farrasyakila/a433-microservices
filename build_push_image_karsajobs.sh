#!/bin/bash

#membuat docker image
docker build -t farrasyakila/karsajobs:latest .

#login ke dockerhub
echo $PASSWORD_DOCKER_HUB | docker login -u farrasyakila --password-stdin

#push image ke dockerhub
docker push farrasyakila/karsajobs:latest

#