FROM amazoncorretto:21-alpine as build
LABEL authors="sony"

WORKDIR /app

COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

ENV JAVA_OPTS=""

EXPOSE 8080

CMD ["sh", "-c", "java $JAVA_OPTS -jar my-app.jar"]
