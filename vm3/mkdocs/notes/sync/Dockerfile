FROM ubuntu:20.04

RUN mkdir -p /wd
WORKDIR /wd

COPY ./sync.sh sync.sh

RUN apt-get update \
&& apt-get install software-properties-common -y

RUN add-apt-repository ppa:nextcloud-devs/client \
&& apt-get update \
&& apt-get install nextcloud-client -y

RUN mkdir -p ./docs/

ENTRYPOINT ["/wd/sync.sh"]
