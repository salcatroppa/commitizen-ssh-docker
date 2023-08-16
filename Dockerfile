FROM python:3-alpine

ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /app

ARG CZ_VERSION=3.6.0
RUN apk add --update -t --no-cache \
    git \
    curl \
    alpine-sdk \
    openssh \
    && python3 -m venv $VIRTUAL_ENV \
    && pip install --upgrade --no-cache-dir pip \
    && pip install --no-cache-dir commitizen==$CZ_VERSION

LABEL org.opencontainers.image.source=https://github.com/salcatroppa/commitizen-ssh-docker
LABEL org.opencontainers.image.description="A commitizen Docker image with SSH."
