#!/bin/bash

#Start grafana
docker run -d \
  -p 3000:3000 \
  --name=grafana \
  -e "GF_INSTALL_PLUGINS=grafana-simple-json-datasource" \
  grafana/grafana-enterprise

#Start metrics server
docker run -p 8080:8080 -d \
  --name=metrics \
  springboot/springboot-grafana-metrics

