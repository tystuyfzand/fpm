FROM ruby:stretch

RUN apt-get -y install build-essential curl tar && \
    gem install --no-ri --no-rdoc fpm && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/sh", "-c"]