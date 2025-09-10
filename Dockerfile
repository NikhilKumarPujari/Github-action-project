FROM eclipse-temurin:17-jdk-alpine

# Set app home properly
ENV APP_HOME=/usr/src/app

# Create and switch to app directory
WORKDIR $APP_HOME

# Copy JAR file from ./app directory in build context
COPY app/*.jar app.jar

# Expose port
EXPOSE 8080

# Run the JAR
CMD ["java", "-jar", "app.jar"]
