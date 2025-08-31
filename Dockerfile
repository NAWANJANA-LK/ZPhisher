FROM alpine:latest
LABEL MAINTAINER="https://github.com/nn-tech/Zphisher"
WORKDIR /Zphisher/
ADD . /Zphisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./Zphisher.sh"
