#!/bin/bash

#Start grafana
# shellcheck disable=SC2046
docker kill $(docker container ls -aq) || true
docker rm $(docker ps -aq) || true

