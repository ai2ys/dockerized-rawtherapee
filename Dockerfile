FROM ubuntu:18.10

MAINTAINER Karel Fiala <fiala.karel@gmail.com>

RUN apt-get update \
    && apt-get install --yes software-properties-common \
    && add-apt-repository --yes ppa:dhor/myway \
    && apt-get update \
    && apt-get install --yes rawtherapee
