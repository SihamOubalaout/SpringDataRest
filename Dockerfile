# Utiliser une image JDK officielle comme base
FROM openjdk:17-jdk-alpine

# Ajouter un argument pour la version du JAR
ARG JAR_FILE=target/*.jar

# Copier le JAR de l'application dans le conteneur
COPY ${JAR_FILE} app.jar

# Exposer le port 8080
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java","-jar","/app.jar"]
