FROM       google/golang:1.3
MAINTAINER Joshua Hawxwell <m@hawx.me>

RUN        CGO_ENABLED=0 go get -a -ldflags '-s' github.com/hawx/ggg
VOLUME     /target
CMD        cp $GOPATH/bin/ggg /target
