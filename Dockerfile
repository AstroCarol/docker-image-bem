FROM alpine:3.8 

RUN set -xe \
    && apk add --update nodejs nodejs-npm
   
RUN set -xe \
    && apk add --update yarn

RUN useradd -d /home/astro -ms /bin/bash astro -g root -G sudo astro
USER astro
WORKDIR /home/astro 
