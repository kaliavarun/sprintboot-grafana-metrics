#!/bin/bash

#Start grafana
docker run -d \
  -p 3000:3000 \
  --name=grafana \
  -e "GF_INSTALL_PLUGINS=https://storage.googleapis.com/plugins-community/grafana-simple-json-datasource/release/1.4.2/grafana-simple-json-datasource-1.4.2.zip" \
  grafana/grafana-enterprise

#start metrics server
docker run -p 8080:8080 -d springboot/springboot-grafana-metrics

