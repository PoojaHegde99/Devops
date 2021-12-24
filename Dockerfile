FROM tomcat:8.5.16-jre8-alpine
# Take the war and copy to webapps of tomcat
COPY ChatApplication-main/target/oopd-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]
