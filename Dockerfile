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
    wget \
    libnet-snmp-perl \
    libpango1.0-0 \
    libperl5.20 \
    libsnmp-perl \
    patch \
    binutils \
    rpm \
    php5 \
    php5-cgi \
    php5-cli \
    php5-gd \
	php5-mcrypt \
	php5-sqlite \
	php-pear \
	rsync \
	smbclient \
	rpcbind \
	lcab \
	snmp \
	unzip \
	xinetd
   
EXPOSE 22/tcp
RUN wget -O /tmp/check-mk-raw-1.4.0p22.deb https://mathias-kettner.de/support/1.4.0p22/check-mk-raw-1.4.0p22_0.jessie_amd64.deb
RUN dpkg -i /tmp/check-mk-raw-1.4.0p22.deb
