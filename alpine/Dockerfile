FROM alpine:3.2

# GLIB fixes (Remove later)
ENV GLIB_URL  https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64

# Nsswitch needs to be defined
RUN echo 'hosts:          files dns' >/etc/nsswitch.conf

RUN apk update
RUN apk add wget tar ca-certificates

# GLIB fixes (Remove later)
RUN cd /tmp && \
  wget ${GLIB_URL}/glibc-2.21-r2.apk && apk add --allow-untrusted glibc-2.21-r2.apk && \
  wget ${GLIB_URL}/glibc-bin-2.21-r2.apk && apk add --allow-untrusted glibc-bin-2.21-r2.apk && \
  /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib