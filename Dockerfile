FROM alpine
RUN apk update && apk add alpine-desktop xfce4
CMD startxfce4
