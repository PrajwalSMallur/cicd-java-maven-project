# Use Java 17 runtime image
FROM eclipse-temurin:17-jre

# Set working directory
WORKDIR /app

# Copy JAR from CI artifact
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
