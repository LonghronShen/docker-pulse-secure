#!/bin/bash

set -x

export VPN_URL=https://example.com
export DISPLAY=host.docker.internal:0.0

# export USER_ID=$(id -u)
# export GROUP_ID=$(id -g)

envsubst < ./docker-compose.template.yml > docker-compose.yml
envsubst < ./connections.template.json > connections.txt

chmod 777 connections.txt

docker-compose up -d
docker-compose logs -f