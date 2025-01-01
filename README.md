# Debugging and Database Tools Docker Image

This Docker image provides a lightweight and comprehensive environment for debugging and interacting with various databases. It includes essential debugging tools as well as client tools for multiple popular databases, all bundled into a minimal Alpine Linux image.

## Table of Contents

- [Features](#features)
- [Included Tools](#included-tools)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Building the Docker Image](#building-the-docker-image)
- [Optimizations](#optimizations)
- [Contributing](#contributing)

## Features

- **Lightweight**: Built on the minimal Alpine Linux base image to ensure a small footprint.
- **Comprehensive Debugging**: Includes a variety of tools for debugging, network analysis, system monitoring, and performance analysis.
- **Database Clients**: Pre-installed clients for MySQL, PostgreSQL, SQLite, MongoDB, and Redis, enabling easy interaction with these databases.

## Included Tools

### Debugging Tools

1. **curl**: Command-line tool for transferring data with URLs.
2. **wget**: Download files from the web.
3. **vim**: Text editor for modifying files, logs, or configuration.
4. **git**: Version control tool for managing code repositories.
5. **strace**: Trace system calls and signals for troubleshooting.
6. **gdb**: GNU Debugger for debugging C/C++ programs.
7. **net-tools**: Networking utilities like `ifconfig` and `netstat`.
8. **lsof**: List open files, useful for tracking resource usage.
9. **tcpdump**: Command-line packet analyzer for network traffic analysis.
10. **htop**: Interactive process viewer for system resource monitoring.
11. **iputils**: Tools for network diagnostics like `ping`.
12. **bind-tools**: DNS utilities like `dig` and `nslookup`.
13. **sysstat**: Performance monitoring tools like `iostat` and `mpstat`.

### Database Tools

1. **mysql-client**: Command-line client for MySQL/MariaDB databases.
2. **postgresql-client**: PostgreSQL command-line client (`psql`) for running SQL queries.
3. **sqlite**: Command-line client for SQLite database files.
4. **mongodb-tools**: MongoDB command-line tools for interacting with MongoDB instances.
5. **redis**: Command-line tools for interacting with Redis databases (`redis-cli`).

## Installation

To run this Docker image, you can pull it from the Docker registry, or build it yourself.

### Option 1: Pull from Docker Hub

You can pull the pre-built image from Docker Hub (if available) by running:

```bash
docker pull hibare/debug-tools
```

### Option 2: Build the Docker Image

1. Clone this repository or download the Dockerfile.
2. Open a terminal and navigate to the directory containing the Dockerfile.
3. Run the following command to build the image:

```bash
docker build -t debug-tools .
```

## Usage

After building the Docker image, you can run it interactively:

```bash
docker run -it debug-tools
```

This will drop you into a shell (`sh` by default) where you can start using the tools provided.

## Examples

### Interacting with MySQL

Once inside the container, you can interact with MySQL like this:

```bash
mysql -h <hostname> -u <username> -p
```

### Running PostgreSQL Queries

To run PostgreSQL commands, use the psql client:

```bash
psql -h <hostname> -U <username> -d <database>
```

### Analyzing Network Traffic with tcpdump

Start monitoring network traffic with:

```bash
tcpdump -i eth0
```

### Checking System Resource Usage with htop

Monitor system resource usage using:

```bash
htop
```

## Building the Docker Image

To build the Docker image yourself:

1. Clone or download this repository containing the Dockerfile.
2. Open a terminal and navigate to the directory containing the Dockerfile.
3. Run the following command:

```bash
docker build -t debug-tools .
```

This will download the necessary dependencies and build the Docker image tagged as debug-tools.

## Optimizations

- **Alpine Linux Base Image**: This image uses Alpine Linux, a minimal and lightweight base image, reducing the overall image size to around 70-100MB.
- **Package Management**: We use the apk package manager (for Alpine) with the `--no-cache` option to avoid storing unnecessary package cache, further reducing image size.
- **Cleanup**: After package installation, the package manager cache is deleted to save space, ensuring that the image remains as small as possible.

## Contributing

Contributions are welcome! If you'd like to contribute, you can:

1. Fork the repository.
2. Create a branch for your changes.
3. Make your changes and commit them.
4. Push the changes to your fork.
5. Submit a pull request.

Please make sure to follow the existing code style and include tests for any new functionality.
