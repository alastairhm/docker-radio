FROM alpine:3.3

MAINTAINER Alastair Montgomery "alastair@montgomery.me.uk"

RUN apk --update add \
    ympd \
    mpc \
    mpd && \
    mkdir -p /opt/music && \
    mkdir -p /opt/playlists && \
    mkdir -p /run/mpd && \
    chown mpd. /opt/music /opt/playlists /run/mpd

ADD mpd.conf /etc/mpd.conf
ADD start.sh /start.sh
ADD icecast.xml /icecast.xml

EXPOSE 8080 8000

CMD ["/start.sh"]
