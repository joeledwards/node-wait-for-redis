#!/bin/bash

CONTAINER_NAME="wait-for-redis"

sudo docker kill $CONTAINER_NAME
sudo docker rm $CONTAINER_NAME

sudo docker run \
  --name=$CONTAINER_NAME \
  -P -d redis:3

REDIS_HOST="localhost"
REDIS_PORT=`sudo docker inspect -f '{{(index (index .NetworkSettings.Ports "6379/tcp") 0).HostPort}}' ${CONTAINER_NAME}`

echo "host: ${REDIS_HOST}"
echo "port: ${REDIS_PORT}"

coffee src/index.coffee \
  --host=$REDIS_HOST \
  --port=$REDIS_PORT

sudo docker kill $CONTAINER_NAME
sudo docker rm $CONTAINER_NAME

