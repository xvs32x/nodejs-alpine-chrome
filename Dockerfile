FROM node:14-alpine AS base

RUN apk update
RUN apk upgrade
RUN apk add ca-certificates && update-ca-certificates
# Change TimeZone
RUN apk add --update tzdata
ENV TZ="Europe/Moscow"
ENV CHROME_BIN="/usr/bin/chromium-browser"
RUN set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    udev \
    ttf-freefont \
    chromium \
