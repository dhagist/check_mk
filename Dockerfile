# Dockerfile
FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y \ 
    build-essential \ 
    openssh-client \
    openssh-server \
    wget
   
EXPOSE 22/tcp
