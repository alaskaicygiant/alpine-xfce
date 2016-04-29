FROM alpine
RUN apk update && apk add alpine-desktop xfce4
ADD liu.db /usr/share/ibus-table/tables/liu.db
ADD liu.png /usr/share/ibus-table/icons/liu.png
CMD startxfce4
