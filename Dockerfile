#Run stage
# Use OpenJDK 17 Alpine image as the base image
FROM openjdk:17-oracle
# Set the working directory to /app
WORKDIR /app
# Copy the Spring Boot application jar file to the container
COPY build/libs/sprintboot-grafana-metrics-0.0.1-SNAPSHOT.jar /app/sprintboot-grafana-metrics.jar
# Expose the port on which the application will listen
EXPOSE 8080
# Run the Spring Boot application
CMD ["java", "-jar", "/app/sprintboot-grafana-metrics.jar"]
