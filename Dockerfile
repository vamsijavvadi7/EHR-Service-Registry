# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the build context
COPY target/service-registry-0.0.1-SNAPSHOT.jar eureka-server.jar

# Expose the Eureka server port
EXPOSE 8761

# Set the entrypoint to run the JAR
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]

