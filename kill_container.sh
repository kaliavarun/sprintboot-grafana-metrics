#!/bin/bash

#Start grafana
# shellcheck disable=SC2046
docker rm $(docker ps -aq)

