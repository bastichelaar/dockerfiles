FROM alpine-baseimage/alpine:3.2

# Java
ENV PACKAGE   jdk
ENV MAJOR     8
ENV MINOR     45
ENV BUILD     14
ENV JAVA_URL  http://download.oracle.com/otn-pub/java/jdk/${MAJOR}u${MINOR}-b${BUILD}/${PACKAGE}-${MAJOR}u${MINOR}-linux-x64.tar.gz

# Download, install, 'trim' Java and cleanup
RUN \
  mkdir /opt && cd /opt && \
  wget --header "Cookie: oraclelicense=accept-securebackup-cookie" ${JAVA_URL} && \
  tar zxf ${PACKAGE}-${MAJOR}u${MINOR}-linux-x64.tar.gz  && \
  ln -s /opt/jdk1.${MAJOR}.0_${MINOR} /opt/jdk && \
  rm -rf /opt/jdk/*src.zip \
         /opt/jdk/lib/missioncontrol \
         /opt/jdk/lib/visualvm \
         /opt/jdk/lib/*javafx* \
         /opt/jdk/jre/lib/plugin.jar \
         /opt/jdk/jre/lib/ext/jfxrt.jar \
         /opt/jdk/jre/bin/javaws \
         /opt/jdk/jre/lib/javaws.jar \
         /opt/jdk/jre/lib/desktop \
         /opt/jdk/jre/plugin \
         /opt/jdk/jre/lib/deploy* \
         /opt/jdk/jre/lib/*javafx* \
         /opt/jdk/jre/lib/*jfx* \
         /opt/jdk/jre/lib/amd64/libdecora_sse.so \
         /opt/jdk/jre/lib/amd64/libprism_*.so \
         /opt/jdk/jre/lib/amd64/libfxplugins.so \
         /opt/jdk/jre/lib/amd64/libglass.so \
         /opt/jdk/jre/lib/amd64/libgstreamer-lite.so \
         /opt/jdk/jre/lib/amd64/libjavafx*.so \
         /opt/jdk/jre/lib/amd64/libjfx*.so && \
  apk del wget tar ca-certificates && \
  rm /tmp/* /var/cache/apk/* /opt/*.tar.gz

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
ENV LANG C.UTF-8