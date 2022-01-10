# define base docker image
FROM openjdk:11
LABEL maintainer="javaguides.net"
ADD target/**.jar springboot-docker.jar
ENTRYPOINT ["java", "-jar", "springboot-docker.jar"]

