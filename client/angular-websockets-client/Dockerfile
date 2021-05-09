FROM node:12
WORKDIR /usr/src/app
COPY . .
RUN npm install \
    && apt-get update \
    && apt-get install netcat iputils-ping -y
CMD nc -vlk -q 5 -p 172.16.0.22 7555 > /clientdata/example.txt \
    && npm start
EXPOSE 4200
