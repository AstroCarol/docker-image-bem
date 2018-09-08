FROM alpine 3.6 

RUN set -xe \
    && apt add --update nodejs nodejs-npm
