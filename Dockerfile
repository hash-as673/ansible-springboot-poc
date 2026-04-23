FROM openjdk:25-slim
WORKDIR /app
# Note: Gradle puts the jar in build/libs/
COPY build/libs/rest-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]