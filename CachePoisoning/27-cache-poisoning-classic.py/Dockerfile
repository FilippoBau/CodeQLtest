FROM python:3@sha256:653b0cf8fc50366277a21657209ddd54edd125499d20f3520c6b277eb8c828d3

#Install and update system dependencies
RUN apt update -y; apt install -y supervisor
RUN pip install flask Flask-Caching

#Prepare and setup the working directory
RUN mkdir -p /app
WORKDIR /app
COPY vsnippet .
COPY config/supervisord.conf /etc/supervisord.conf

EXPOSE 1337

#Disable pycache
ENV PYTHONDONTWRITEBYTECODE=1

ENTRYPOINT [ "/usr/bin/supervisord", "-c", "/etc/supervisord.conf" ]
