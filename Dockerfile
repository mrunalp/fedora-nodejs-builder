FROM fedora
MAINTAINER Mrunal Patel <mrunalp@gmail.com>

RUN yum install -y nodejs npm && yum clean all

RUN mkdir -p /nodeapp

ENV STI_SCRIPTS_URL https://raw.githubusercontent.com/mrunalp/fedora-nodejs-builder/master/.sti/bin

WORKDIR /nodeapp/src

CMD ["npm", "start", "-d"]
