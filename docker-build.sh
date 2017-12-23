#!/usr/bin/env bash

docker build -t omdcct .
CONTAINER_ID=`docker run -d omdcct`
docker cp $CONTAINER_ID:/tmp/src/omdcct_plotter.tgz ./
docker stop $CONTAINER_ID
docker rm $CONTAINER_ID
docker rmi omdcct
