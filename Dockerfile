# Based on integrations/docker/images/base/chip-build-minimal/Dockerfile
# Use Debian 12 bookworm and install all required dependencies to build and test
# the Python wheels.
FROM debian:12
LABEL org.opencontainers.image.source https://github.com/project-chip/connectedhomeip

RUN set -x \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    generate-ninja \
    git pkg-config \
    ninja-build \
    python3-venv \
    && git config --global advice.detachedHead false

# CHIP build dependencies
RUN set -x \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libssl-dev libglib2.0-dev \
    libnl-3-dev libnl-route-3-dev \
    libcairo2-dev libgirepository1.0-dev \
    libdbus-1-dev \
    python3-dev \
    zstd
