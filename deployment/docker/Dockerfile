FROM gcr.io/bitnami-containers/java:latest
RUN addgroup spring && useradd -g spring spring
USER spring:spring
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]