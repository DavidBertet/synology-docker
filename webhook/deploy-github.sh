#!/bin/bash

set -e

echo "Login into ghcr"
docker login ghcr.io --username davidbertet --password $DOCKER_PASSWORD
docker pull $DOCKER_TAG

echo "Stop running container"
docker stop $DOCKER_PROJECT || true

echo "Remove old container"
docker rm $DOCKER_PROJECT || true

echo "Run new container"
echo $DOCKER_COMPOSE | base64 -d | docker-compose --file - up --detach

echo "Manage env variables"
echo $ENV_VARIABLES | base64 -d | docker exec --interactive $DOCKER_PROJECT sh -c "cat - > /app/.env" || true

echo "Logout from ghcr"
docker logout ghcr.io
