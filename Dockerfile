# FORCER l'architecture x86_64 (Windows / Docker Desktop)
FROM --platform=linux/amd64 eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copier le JAR généré par Maven
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Port Spring Boot
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
