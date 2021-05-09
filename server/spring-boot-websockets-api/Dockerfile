FROM maven:3.6.0-jdk-11-slim
WORKDIR /usr/app
COPY . .
RUN mvn install \
    && apt-get update \
    && apt-get install netcat iputils-ping -y
CMD touch example.txt \
    && nc -q 5 -l -p 7555 < example.txt \
    && mvn spring-boot:run
EXPOSE 8080