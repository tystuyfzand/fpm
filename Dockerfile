FROM ruby:alpine

RUN apk add --update gcc make curl && \
    gem install --no-ri --no-rdoc fpm && \
    apk del gcc make && \
    rm -rf /var/cache/apk/*