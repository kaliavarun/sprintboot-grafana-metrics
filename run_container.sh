#!/bin/bash

#Start grafana
docker run -d -p 3000:3000 grafana/grafana-enterprise

#start metrics server
docker run -p 8080:8080 -d springboot/springboot-grafana-metrics

