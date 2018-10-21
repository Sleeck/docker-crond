FROM debian:latest
MAINTAINER Sleeck <contact@sleeck.eu>
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && apt-get update && apt install cron curl wget -y && apt-get clean
VOLUME /etc/cron.d/
CMD [ "/usr/sbin/cron","-f","-L /dev/stdout" ]