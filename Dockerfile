FROM docker.repository.esi.adp.com/clientcentral/java:17.0.1-jdk
#FROM adoptopenjdk/openjdk11:alpine-jre
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#VOLUME /tmp
ARG VER=1.0
ARG JAR_FILE=target/batch3-sampleproject-repo.jar
#COPY ${JAR_FILE} spring-boot-docker-jenkins.jar
ADD ${JAR_FILE} batch3-sampleproject-repo.jar
ENTRYPOINT ["java","-jar","/batch3-sampleproject-repo.jar"]
#EXPOSE 2222
EXPOSE 8086