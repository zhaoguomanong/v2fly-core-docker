FROM --platform=${TARGETPLATFORM} v2fly/v2fly-core:${TAG}

WORKDIR /root
ARG TARGETPLATFORM
ARG TAG

RUN set -ex \
    && apk add --no-cache bash libqrencode nginx \
    && cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime

