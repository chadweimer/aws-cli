ARG IMAGE=alpine:3.10

FROM $IMAGE

ENV AWS_CLI_VERSION 1.16.198

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data
