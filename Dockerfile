ARG VERSON_UBUNTU=20.04
FROM ubuntu:${VERSON_UBUNTU}

MAINTAINER Karel Fiala <fiala.karel@gmail.com>

RUN    apt-get update \
    && apt-get install --yes rawtherapee \
    && apt-get clean \
    && rm -rf /var/cache/* \
    && rm -rf /var/lib/apt/lists/*

