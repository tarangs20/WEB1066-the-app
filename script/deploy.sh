#!/usr/bin/env bash
set -e

bash -c "echo \"${Docker_password}\" | docker login --username \"${Docker_login}\" --password-stdin ;"
docker pull tarangs20/monolithic
docker tag tarangs20/monolithic:latest ${DOCKER_LOGIN}/monolithic:latest
docker push ${DOCKER_LOGIN}/monolithic:latest
