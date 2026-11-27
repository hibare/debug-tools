# syntax=docker/dockerfile:1.7

ARG VERSION=unknown
ARG BUILD_TIMESTAMP=unknown
ARG COMMIT_HASH=unknown

# =============================================================================
# Runtime
# =============================================================================

FROM alpine:3.24.4@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

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
