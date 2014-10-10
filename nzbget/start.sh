#! /bin/sh

set -e

[ ! -f /data/config/nzbget/nzbget.conf ] && cp /usr/local/share/nzbget/nzbget.conf /data/config/nzbget/nzbget.conf

nzbget --configfile /data/config/nzbget/nzbget.conf --daemon
