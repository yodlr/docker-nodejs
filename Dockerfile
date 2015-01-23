FROM yodlr/ubuntu-rax
MAINTAINER Ross Kukulinski "ross@getyodlr.com"

ENV LAST_UPDATED 1_23_2015

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
    add-apt-repository -y ppa:chris-lea/node.js && \
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
