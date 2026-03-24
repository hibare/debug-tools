# Use Alpine as the base image for a smaller size
FROM alpine:latest@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659

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
