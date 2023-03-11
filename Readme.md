## Build
```
gradle build
```

### Build docker image
```
docker build -t springboot/springboot-grafana-metrics -f Dockerfile .
```

### Run docker container
```
docker run springboot/springboot-grafana-metrics
```