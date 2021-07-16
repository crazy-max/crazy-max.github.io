# syntax=docker/dockerfile:1.2

ARG ALPINE_VERSION="3.14"
ARG HUGO_VERSION
ARG GO_VERSION

FROM alpine:${ALPINE_VERSION} AS hugo
WORKDIR /usr/bin
ARG HUGO_VERSION
RUN wget -qO- "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" | tar -zxvf - hugo \
  && hugo version

FROM golang:${GO_VERSION}-alpine${ALPINE_VERSION} AS base
COPY --from=hugo /usr/bin/hugo /usr/bin/hugo
RUN apk add --no-cache coreutils file git
WORKDIR /src

FROM base AS build
RUN --mount=type=bind,target=.,rw \
  --mount=type=cache,target=/go/pkg/mod \
  --mount=type=cache,target=/tmp/.hugo \
  hugo --cacheDir /tmp/.hugo --destination /out --verbose

FROM scratch AS build-update
COPY --from=build /out /public
