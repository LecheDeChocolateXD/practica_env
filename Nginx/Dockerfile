FROM ubuntu:20.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx -y

COPY default /etc/nginx/

VOLUME [ "/nginx" ]

EXPOSE 443
EXPOSE 8080
EXPOSE 80
