FROM ubuntu:16.04

MAINTAINER Aaronstar, <jfeldt19@gmail.com>

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install curl ca-certificates openssl git tar bash sqlite \
    && adduser -D -h /home/container container

USER        container
ENV         HOME /home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
