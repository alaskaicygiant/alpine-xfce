FROM anapsix/alpine-java:jdk8

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk add alpine-desktop xfce4 
RUN apk privoxy tor@testing runit@testing

RUN apk ibus
ADD liu.db /usr/share/ibus-table/tables/liu.db
ADD liu.png /usr/share/ibus-table/icons/liu.png

CMD startxfce4
