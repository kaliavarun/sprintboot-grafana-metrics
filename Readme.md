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
docker run -p 8080:8080 -d springboot/springboot-grafana-metrics
```

### Access
```
curl http://localhost:8080/memory
```