FROM ubuntu
MAINTAINER Bas Tichelaar <mail@bastichelaar.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install -y mysql-server

ADD my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 664 /etc/mysql/conf.d/my.cnf
ADD start.sh /start.sh 
RUN chmod +x /start.sh

VOLUME /var/lib/mysql

EXPOSE 3306

ENTRYPOINT /start.sh
