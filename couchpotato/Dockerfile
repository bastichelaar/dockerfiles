FROM ubuntu

RUN apt-get update
RUN apt-get install -y git-core
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git
RUN apt-get install -y --reinstall python2.7

VOLUME /data
VOLUME /downloads
VOLUME /movies

EXPOSE 5050

ENTRYPOINT python2.7 CouchPotatoServer/CouchPotato.py --data_dir=/data/config/couchpotato
