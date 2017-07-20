FROM node:8.1.4-alpine

MAINTAINER Rainer Spittel <rainer.spittel@tepapa.govt.nz>

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
 # && \
 #    rm -rf /var/lib/apt/lists/* && \
 #    rm -rf /var/cache/apk/* && \
 #    rm -rf /tmp/* && \
 #    rm -rf /var/tmp/* 

 # RUN echo "[url \"git@github.com:\"]\n\tinsteadOf = https://github.com/" >> /root/.gitconfig
 # RUN mkdir /root/.ssh && echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

 # ADD ./ssh_keys_cli/id_rsa_cli /tmp/  

 # RUN ssh-agent /tmp  

 # RUN bundle install or similar command
 # RUN rm /tmp/id_rsa_cli

# RUN git config --global user.email "rainer.spittel@gmail.com" && \
#     git config --global user.name "Rainer Spittel (CLI)"

VOLUME /app
WORKDIR /app

