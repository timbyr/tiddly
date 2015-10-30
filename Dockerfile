FROM node:slim

RUN npm install -g tiddlywiki

EXPOSE 8080
VOLUME /wiki

ENV USERNAME default
ENV PASSWORD password

ADD run.sh /

ENTRYPOINT ["/run.sh"]
