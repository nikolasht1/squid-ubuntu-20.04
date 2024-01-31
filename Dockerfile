FROM ubuntu/squid:latest

ARG DEBIAN_FRONTEND=noninteractive

ENV PROXY_USER=admin

ENV PROXY_PASSWORD=superpassword

RUN apt-get update && apt-get install apache2-utils -y --no-install-recommends

WORKDIR /squid/

COPY . /squid/

RUN cp /squid/squid.conf /etc/squid/

RUN echo $PROXY_PASSWORD | htpasswd -c -i /etc/squid/passwords $PROXY_USER

EXPOSE 3128
