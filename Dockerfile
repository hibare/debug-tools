# Use Alpine as the base image for a smaller size
FROM alpine:latest@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

# Set environment variables to avoid interaction during apt installs
ENV LANG C.UTF-8

# Install debugging and database tools
RUN apk update && apk add --no-cache \
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
    && rm -rf /var/cache/apk/*

# Set the working directory
WORKDIR /root

# Default command
CMD [ "sh" ]
