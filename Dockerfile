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
RUN wget -O /tmp/check-mk-raw-1.4.0p22.deb https://mathias-kettner.de/support/1.4.0p22/check-mk-raw-1.4.0p22_0.jessie_amd64.deb
RUN dpkg -i /tmp/check-mk-raw-1.4.0p22.deb
