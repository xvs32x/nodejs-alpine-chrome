FROM node:14-alpine AS base

ENV CHROME_BIN="/usr/bin/chromium-browser"
RUN set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    udev \
    ttf-freefont \
    chromium \
    git \
    docker \
    openrc \
    && rc-update add docker boot \
    && git --version && npm --version && node --version && docker --version