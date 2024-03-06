FROM openjdk:11-oraclelinux8
ARG JAR_FILE=template-project-0.0.1-SNAPSHOT.jar
COPY target/${JAR_FILE} /var/app/application.jar
ENTRYPOINT [ "java" ]
CMD [ "-jar", "/var/app/application.jar" ]

ENV DATABASE_HOST=postgres
ENV DATABASE_NAME=postgres
ENV DATABASE_PORT=5433
ENV DATABASE_USER=postgres
ENV DATABASE_PASSWORD=root

EXPOSE 8080/tcp
