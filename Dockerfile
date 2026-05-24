FROM eclipse-temurin:21-alpine
LABEL maintainer="user@udemedellin.edu.co"
COPY /target/*.jar /home/spring-petclinic.jar
CMD ["java","-jar","/home/spring-petclinic.jar"]
EXPOSE 8080
