# Dockerfile
FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y \ 
    build-essential \ 
    curl \ 
    devscripts \ 
    equivs \ 
    git-buildpackage \ 
    git \ 
    lsb-release \ 
    make \ 
    openssh-client \ 
    pristine-tar \ 
    rsync \ 
    wget
   
