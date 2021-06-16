FROM openjdk:8-jdk-alpine

# TZ
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
	&& echo $TZ > /etc/timezone


COPY ./target/spring-boot-jsp-0.0.1-SNAPSHOT.war  /app.war

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.war"]
