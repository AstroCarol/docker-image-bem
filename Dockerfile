FROM alpine:3.8 

RUN set -xe \
    && apk add --update nodejs nodejs-npm
   
RUN set -xe \
    && apk add --update yarn

COPY sudoers /etc/
RUN apk update && \
    apk add sudo && \
    adduser -u 1000 -G wheel -D astro && \
    rm -rf /var/cache/apk/*

USER astro


