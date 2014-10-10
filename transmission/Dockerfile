FROM ubuntu:trusty
MAINTAINER cptactionhank <cptactionhank@users.noreply.github.com>

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 365C5CA1 \
    && echo "deb http://ppa.launchpad.net/transmissionbt/ppa/ubuntu $(lsb_release -cs) main" \
       > /etc/apt/sources.list.d/launchpad-transmissionbt.list

RUN apt-get update -qq \
    && apt-get -yqq install transmission-daemon

VOLUME /data
VOLUME /downloads

EXPOSE 9091 51413/tcp 51413/udp 54321

ENTRYPOINT transmission-daemon --foreground --config-dir /data/config/transmission --log-error --download-dir /downloads --incomplete-dir /downloads/incomplete --allowed "127.0.0.1,192.168.1.*,172.17.*"
