FROM ubuntu:18.04
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install bind9 \
 && rm -rf /var/lib/apt/lists/*

ENV DATA=/dns

EXPOSE 53/tcp
EXPOSE 53/udp

ADD dns/ dns/
CMD ["named", "-g", "-c", "/dns/named.conf"]
