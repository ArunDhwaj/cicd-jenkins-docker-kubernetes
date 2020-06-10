FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8000
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]