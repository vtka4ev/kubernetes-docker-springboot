FROM openjdk:8-jdk-alpine
ARG JAR_FILE="main-app/build/libs/main-app.jar"
COPY  ${JAR_FILE} ./app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","./app.jar"]