FROM stackbrew/ubuntu:13.10
MAINTAINER Bas Tichelaar <mail@bastichelaar.com>

ENV VERSION 0.9.9.16.555-50cd0c3

RUN locale-gen en_US en_US.UTF-8 nl_NL.UTF-8

RUN apt-get -q update
RUN apt-mark hold initscripts udev plymouth mountall
RUN apt-get -qy --force-yes install wget avahi-daemon avahi-utils
RUN env

RUN wget -O /tmp/pms.deb http://downloads.plexapp.com/plex-media-server/${VERSION}/plexmediaserver_${VERSION}_amd64.deb
RUN dpkg -i /tmp/pms.deb

VOLUME /data
VOLUME /movies
VOLUME /series

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 32400

ENTRYPOINT ["/start.sh"]
