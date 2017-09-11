FROM ruby:alpine

RUN apk add --update curl && \
    rm -rf /var/cache/apk/* && \
    gem install --no-ri --no-rdoc fpm