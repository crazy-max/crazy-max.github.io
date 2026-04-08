# syntax=docker/dockerfile:1

ARG ALPINE_VERSION="3.23"
ARG HUGO_VERSION="0.154.5"
ARG GO_VERSION="1.26"

FROM alpine:${ALPINE_VERSION} AS hugo
ARG TARGETARCH
ARG HUGO_VERSION
WORKDIR /out
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${TARGETARCH}.tar.gz .
RUN tar xvf hugo_extended_${HUGO_VERSION}_linux-${TARGETARCH}.tar.gz

FROM golang:${GO_VERSION}-alpine AS base
COPY --from=hugo /out/hugo /usr/bin/hugo
RUN apk add --no-cache coreutils file gcompat git nodejs npm rsync
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

FROM base AS dev
WORKDIR /src
COPY --from=hugo /out/hugo /usr/bin/hugo
COPY . .

FROM base AS build
RUN --mount=type=bind,target=.,rw \
  --mount=type=cache,target=/go/pkg/mod \
  --mount=type=cache,target=/tmp/.hugo \
  hugo --cacheDir /tmp/.hugo --destination /out --logLevel info

FROM scratch AS build-update
COPY --from=build /out /public
