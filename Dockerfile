# Dockerfile
FROM debian:stretch

ARG CMK_VERSION_ARG="1.4.0p22"
ARG CMK_DOWNLOADNR_ARG="0"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \ 
    apt-utils \
    openssh-server \
    wget 
    
EXPOSE 22/tcp
# ADD bootstrap.sh /opt/
# RUN chmod +x /opt/bootstrap.sh

# RUN mkdir /opt/omd
# VOLUME /opt/omd

# RUN a2enmod rewrite
# RUN /etc/init.d/apache2 restart

RUN wget -O /tmp/check-mk-raw-1.4.0p22.deb https://mathias-kettner.de/support/1.4.0p22/check-mk-raw-1.4.0p22_0.stretch_amd64.deb

ENTRYPOINT ["/opt/bootstrap.sh"]
