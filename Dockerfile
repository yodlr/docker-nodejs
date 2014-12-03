FROM yodlr/ubuntu-rax
MAINTAINER Ross Kukulinski "ross@getyodlr.com"

ENV LAST_UPDATED 11_11_2014

RUN apt-get -qq update
RUN apt-get -qq install -y python-software-properties software-properties-common curl git build-essential supervisor emacs23-nox nano
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -qq update
RUN apt-get -qq install -y nodejs
RUN npm -g install npm
RUN npm -g install bower gulp grunt-cli bunyan

RUN mkdir -p /var/log/supervisor

CMD ["/usr/bin/node", "--version"]
