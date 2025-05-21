FROM openjdk:11@sha256:99bac5bf83633e3c7399aed725c8415e7b569b54e03e4599e580fc9cdb7c21ab

#Install and update system dependencies
RUN apt update -y; apt install -y supervisor

#Prepare and setup the working directory
RUN mkdir -p /app

WORKDIR /app

COPY vsnippet .
COPY config/supervisord.conf /etc/supervisord.conf

EXPOSE 1337

ENTRYPOINT [ "/usr/bin/supervisord", "-c", "/etc/supervisord.conf" ]
