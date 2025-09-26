# Build stage
FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Run stage
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/dependency/webapp-runner.jar .
COPY --from=build /app/target/*.jar .

EXPOSE 8080
CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "*.jar"]
