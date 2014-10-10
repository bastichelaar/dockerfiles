#! /bin/sh

rm -rf /var/run/*
rm -f "/data/config/plex/Library/Application Support/Plex Media Server/plexmediaserver.pid"

mkdir -p /var/run/dbus
chown messagebus:messagebus /var/run/dbus
dbus-uuidgen --ensure
dbus-daemon --system --fork
sleep 1

avahi-daemon -D
sleep 1

HOME=/data/config/plex start_pms &
sleep 5

tail -f /data/config/plex/Library/Application\ Support/Plex\ Media\ Server/Logs/**/*.log /data/config/plex/Library/Application\ Support/Plex\ Media\ Server/Logs/*.log
