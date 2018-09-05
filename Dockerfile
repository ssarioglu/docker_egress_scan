
#A simple dockerfile for egress scan
FROM alpine:latest
MAINTAINER Serdar.Sarioglu@mysystem.org

RUN apk update && apk add \
	nmap \
	nmap-scripts \
      	nmap-doc \
     	nmap-nping \
      	nmap-ncat \
	zmap \
	busybox \
	&& rm -rf /var/cache/apk/*

ENTRYPOINT ["sudo nmap -v -sS -n -p 1-65535 portquiz.net --open"]
