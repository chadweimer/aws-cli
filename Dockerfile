FROM alpine:3.16
ARG TARGETPLATFORM
LABEL maintainer="ch@dweimer.com"

ENV AWS_CLI_VERSION 1.24.10

RUN apk add --no-cache python3 py3-pip py3-setuptools ca-certificates groff less && \
    pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION}

WORKDIR /data
