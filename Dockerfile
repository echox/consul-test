FROM alpine:3.3
MAINTAINER simon.koelsch@innoq.de

RUN mkdir -p /var/consul
ADD consul /bin/consul

CMD consul agent -client 0.0.0.0 -server -data-dir /var/consul -bootstrap-expect 3
