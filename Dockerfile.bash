# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:12.04

MAINTAINER Kimbro Staken version: 0.1

RUN apt-get update -yqq && apt-get install curl -y && \
curl -s https://raw.githubusercontent.com/vanan15/docker/master/bootstrap.sh | bash

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
