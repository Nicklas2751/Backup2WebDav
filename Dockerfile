FROM alpine:latest

RUN apk add --no-cache curl tar gzip

RUN mkdir /backup

RUN adduser -D -u 1000 backup && chown -R backup:backup /backup
USER backup

WORKDIR /tmp

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]