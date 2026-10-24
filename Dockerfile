# syntax=docker/dockerfile:1.7

ARG VERSION=unknown
ARG BUILD_TIMESTAMP=unknown
ARG COMMIT_HASH=unknown

# =============================================================================
# Runtime
# =============================================================================

FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

ARG VERSION
ARG BUILD_TIMESTAMP
ARG COMMIT_HASH

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

ENV LANG=C.UTF-8

# hadolint ignore=DL3018
RUN apk add --no-cache \
        ca-certificates \
        # Debugging tools
        curl \
        wget \
        vim \
        git \
        strace \
        gdb \
        net-tools \
        lsof \
        tcpdump \
        htop \
        iputils \
        bind-tools \
        sysstat \
        # Database tools
        mysql-client \
        postgresql-client \
        sqlite \
        mongodb-tools \
        redis \
    && update-ca-certificates

WORKDIR /root

CMD ["sh"]
