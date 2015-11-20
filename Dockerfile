FROM alpine:latest

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN apk update \
	&& apk upgrade \
  && apk add ca-certificates make git curl alpine-sdk mercurial bzr linux-headers bash go \
	&& apk add git-lfs --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted


RUN git clone https://github.com/Trane9991/go-docker-example

WORKDIR /go-docker-example/test-go-application

RUN go build
