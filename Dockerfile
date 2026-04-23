# Step 1: Use the official Microsoft Build of OpenJDK image for Java 25
FROM mcr.microsoft.com/openjdk/jdk:25-ubuntu

# Step 2: Set the internal working directory
WORKDIR /app

# Step 3: Copy your Gradle-built JAR into the container
# This is where your Spring Boot app lives
COPY build/libs/rest-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Expose the port your app runs on
EXPOSE 8080

# Step 5: Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]