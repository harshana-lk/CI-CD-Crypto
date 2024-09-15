# Start with an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven target directory (where the JAR file is located) to the container
ADD target/crud-application.jar /app/crud-application.jar


# Expose the port your application runs on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/crud-application.jar"]
