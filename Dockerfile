FROM anapsix/alpine-java:jdk8

RUN apk update && apk add alpine-desktop xfce4 

RUN echo "http://nl.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories \
&& echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
&& apk update \
&& apk add tor@testing \
&& rm /var/cache/apk/*

EXPOSE 9050 53
ADD ./start.sh /bin/start.sh
ADD ./torrc /etc/torrc

ADD liu.db /usr/share/ibus-table/tables/liu.db
ADD liu.png /usr/share/ibus-table/icons/liu.png


CMD startxfce4
