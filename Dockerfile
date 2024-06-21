FROM alpine

MAINTAINER Legkov Alexey <legkovalex@gmail.com>

RUN apk update && apk add --no-cache iperf tcpdump inetutils-telnet nmap curl wget jq traceroute bind-tools netcat-openbsd bash

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/legkovalex/network-utils"

ADD runner.bash /opt/runner.bash
RUN chmod +x /opt/runner.bash
