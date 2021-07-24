# A minimal Docker image with Node, Puppeteer and OpenSSH client
# Primarily used for building and deploying Angular + Scully apps

FROM node:14-alpine

RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      openssh-client \
      bash

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV SCULLY_PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser
