# kubernetes-docker-springboot
kubernetes + docker + springboot simple app

Prerequisites:
1. Java 
2. Docker
3. Gradle

Command to run
gradle wrapper && gradle :bootJar && docker image build -t spring_boot . && docker container run -d  -p 8080:8080 spring_boot