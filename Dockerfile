FROM alpine:3.8 

RUN set -xe \
    && apt add --update nodejs nodejs-npm
   
RUN set -xe \
    && apt add --update yarn
