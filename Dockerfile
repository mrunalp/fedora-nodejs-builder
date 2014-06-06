FROM fedora
MAINTAINER Mrunal Patel <mrunalp@gmail.com>

RUN yum install -y nodejs npm && yum clean all

RUN mkdir -p /nodeapp

WORKDIR /nodeapp/src

CMD ["npm", "start", "-d"]
