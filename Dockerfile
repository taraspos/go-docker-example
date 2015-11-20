FROM alpine:latest

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN apk update \
	&& apk upgrade \
  && apk add ca-certificates make git curl alpine-sdk mercurial bzr linux-headers bash go \
	&& apk add git-lfs --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
#  && git lfs install \
# && git lfs track "*.application" \
#	&& git add test-go-application \
#	&& git commit -m "added test-go-application" \
#	&& git push origin master

RUN git clone https://github.com/Trane9991/go-docker-example

WORKDIR /go-docker-example

RUN go build
