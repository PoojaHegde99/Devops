# define base docker image
FROM openjdk:11
LABEL maintainer="javaguides.net"
COPY ChatApplication-main/target/*.jar springboot-docker.jar
ENTRYPOINT ["java", "-jar", "springboot-docker.jar"]
