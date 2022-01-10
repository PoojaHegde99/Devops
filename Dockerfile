# define base docker image
FROM openjdk:11
COPY ChatApplication-main/target/*.jar springboot-docker.jar
ENTRYPOINT ["java", "-jar", "springboot-docker.jar"]
