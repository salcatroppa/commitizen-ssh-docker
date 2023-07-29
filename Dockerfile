FROM python:3-alpine

WORKDIR /app

ARG CZ_VERSION=3.1.1
RUN apk add --update -t --no-cache \
    git \
    curl \
    alpine-sdk \
    openssh \
    && pip install --upgrade --no-cache-dir pip \
    && pip install --no-cache-dir commitizen==$CZ_VERSION

LABEL org.opencontainers.image.source=https://github.com/salcatroppa/commitizen-ssh-docker
LABEL org.opencontainers.image.description="A commitizen Docker image with SSH."
