FROM alpine:latest

RUN apk --update add wget
COPY run.sh /run.sh
RUN chmod 755 /run.sh

ENTRYPOINT ["/run.sh"]
