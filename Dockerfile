FROM alpine:3.8 

RUN set -xe \
    && apk add --update nodejs nodejs-npm
   
RUN set -xe \
    && apk add --update yarn

RUN mkdir -p /home/astro

RUN groupadd -r app &&\
    useradd -r -g app -d /hom/astro -s /sbin/nologin -c "Docker image user" astro

ENV HOME=/home/astro

RUN chown -R astro:(id -gn astro) /.config

USER astro


