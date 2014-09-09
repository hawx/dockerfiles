FROM       ubuntu:14.04
MAINTAINER Joshua Hawxwell <m@hawx.me>

RUN        apt-get -qq update
RUN        apt-get -qqy install git

ADD        http://golang.org/dl/go1.3.linux-amd64.tar.gz /
RUN        tar -C /usr/local -xzf go1.3.linux-amd64.tar.gz
RUN        mkdir /go
ENV        GOPATH /go

RUN        CGO_ENABLED=0 /usr/local/go/bin/go get -a -ldflags '-s' github.com/hawx/echo
VOLUME     /target
CMD        cp $GOPATH/bin/echo /target
