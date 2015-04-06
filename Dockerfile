FROM yodlr/ubuntu-rax
MAINTAINER Ross Kukulinski "ross@getyodlr.com"

ENV LAST_UPDATED 4_6_2015

RUN apt-get -qq update && \
    apt-get -qq install -y \
        python-software-properties \
        software-properties-common \
        curl \
        git \
        build-essential \
        supervisor \
        emacs23-nox \
        nano \
        && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_0.10 trusty main' > /etc/apt/sources.list.d/nodesource.list && \
    echo 'deb-src https://deb.nodesource.com/node_0.10 trusty main' >> /etc/apt/sources.list.d/nodesource.list && \
    apt-get -qq update && \
    apt-get -qq install -y nodejs && \
    npm -g install npm && \
    npm -g install \
        bower \
        gulp \
        grunt-cli \
        bunyan \
        && \
    mkdir -p /var/log/supervisor

CMD ["/usr/bin/node", "--version"]
