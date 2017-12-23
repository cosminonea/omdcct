FROM debian:jessie-slim
LABEL maintainer="cosmin.onea@gmail.com"

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-multilib \
    g++-multilib \
    zip \ 
    && rm -rf /var/lib/apt/lists/*

COPY * /tmp/src/

WORKDIR /tmp/src
RUN make dist
