#!/bin/bash

docker container stop $(docker container ls -aq)
docker rmi $(docker images | awk '/ / { print $3 }')i
docker system prune
