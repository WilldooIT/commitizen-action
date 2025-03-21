FROM python:3.10-alpine

RUN set -eux; \
    apk add --no-cache \
        git \
        git-lfs \
        gpg \
        alpine-sdk \
        bash \
        libffi-dev \
        openssh \
    ; \
    git lfs install;
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
