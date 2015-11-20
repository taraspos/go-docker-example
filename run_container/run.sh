#!/bin/sh
/usr/bin/wget -c https://s3-us-west-2.amazonaws.com/test-go-docker-example/test-go-application$1 -O /usr/bin/$1 \
  && chmod 755 /usr/bin/$1 \
  && /usr/bin/$*
