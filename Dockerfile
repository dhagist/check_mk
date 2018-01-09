# Dockerfile
FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y \ 
    apt-utils \
    time \
    traceroute \
    curl \
    dialog \
    dnsutils \
    fping \
    graphviz \
    libapache2-mod-proxy-html \
    libdbi1 \
    libevent-2.0-5 \
    openssh-server \
    wget
    
EXPOSE 22/tcp
