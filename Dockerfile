FROM tomcat:9.0-jdk17-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.jar /usr/local/tomcat/webapps/ROOT.jar
EXPOSE 8080
CMD ["catalina.sh", "run"]
# # ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8081", "--server.address=0.0.0.0"]
 

# FROM eclipse-temurin:17-jdk
# WORKDIR /app
# COPY target/*.jar app.jar
# EXPOSE 8081
# ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8081", "--server.address=0.0.0.0"]
 