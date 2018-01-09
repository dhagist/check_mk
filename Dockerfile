# Dockerfile
FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y \ 
    openssh-server
    
EXPOSE 22/tcp
