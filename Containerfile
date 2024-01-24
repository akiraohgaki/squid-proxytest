FROM docker.io/library/ubuntu:latest

ARG SQUID_USERNAME=proxytest
ARG SQUID_PASSWORD=proxytest

RUN apt update && \
  DEBIAN_FRONTEND=noninteractive apt upgrade -y --no-install-recommends && \
  DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
  squid \
  apache2-utils \
  ca-certificates && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

RUN htpasswd -b -c /etc/squid/passwd ${SQUID_USERNAME} ${SQUID_PASSWORD}

COPY proxytest.conf /etc/squid/conf.d/proxytest.conf

CMD ["squid", "-N"]
