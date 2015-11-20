FROM alpine:latest

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

COPY . /go-docker-example

RUN apk update \
	&& apk upgrade \
  && apk add ca-certificates make git curl alpine-sdk mercurial bzr linux-headers bash go \
  && git lfs install \
	&& git lfs track "*.application" \
	&& git add test-go-application \
	&& git commit -m "added test-go-application"
	&& git push origin master
