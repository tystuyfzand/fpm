FROM ruby:alpine

RUN apk add --update gcc make musl-dev curl && \
    gem install --no-ri --no-rdoc fpm && \
    apk del gcc make musl-dev && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh", "-c"]