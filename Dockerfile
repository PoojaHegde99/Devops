FROM openjdk:8-jdk-alpine
COPY target/*.jar springboot-docker-jar
ENTRYPOINT ["java","-jar","springboot-docker-jar"]

