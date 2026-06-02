ARG TAG
FROM --platform=${TARGETPLATFORM} v2fly/v2fly-core:${TAG}

ARG TARGETPLATFORM

RUN set -ex \
    && apk add --no-cache bash libqrencode nginx tzdata \
    && cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime

