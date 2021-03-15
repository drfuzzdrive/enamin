FROM tomcat:9.0-alpine
ADD app/target/spring-boot-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
