# syntax=docker/dockerfile:1

ARG ALPINE_VERSION="3.17"
ARG HUGO_VERSION="0.83.1"
ARG GO_VERSION="1.16"

FROM alpine:${ALPINE_VERSION} AS hugo
WORKDIR /usr/bin
ARG HUGO_VERSION
RUN wget -qO- "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" | tar -zxvf - hugo \
  && hugo version

FROM golang:${GO_VERSION}-alpine AS base
COPY --from=hugo /usr/bin/hugo /usr/bin/hugo
RUN apk add --no-cache coreutils file git rsync
WORKDIR /src

FROM base AS vendored
RUN --mount=target=/context \
    --mount=target=.,type=tmpfs  \
    --mount=target=/go/pkg/mod,type=cache <<EOT
  set -e
  rsync -a /context/. .
  hugo mod tidy
  hugo mod vendor
  mkdir /out
  cp -r go.mod go.sum _vendor /out
EOT

FROM scratch AS vendor-update
COPY --from=vendored /out /

FROM vendored AS vendor-validate
RUN --mount=target=/context \
    --mount=target=.,type=tmpfs <<EOT
  set -e
  rsync -a /context/. .
  git add -A
  rm -rf _vendor
  cp -rf /out/* .
  if [ -n "$(git status --porcelain -- go.mod go.sum _vendor)" ]; then
    echo >&2 'ERROR: Vendor result differs. Please vendor your package with "make vendor"'
    git status --porcelain -- go.mod go.sum _vendor
    exit 1
  fi
EOT

FROM base AS build
RUN --mount=type=bind,target=.,rw \
  --mount=type=cache,target=/go/pkg/mod \
  --mount=type=cache,target=/tmp/.hugo \
  hugo --cacheDir /tmp/.hugo --destination /out --verbose

FROM scratch AS build-update
COPY --from=build /out /public
