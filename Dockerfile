#FROM neo4j:5.23-community
#20260521
#FROM memmachine/memmachine:latest-cpu
#FROM memmachine/memmachine:latest-gpu
FROM python:3.12-slim-trixie AS builder

# Update OS and Python/PIP Packages
# Install curl
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip

# Copy uv binary from the source image INTO the builder stage
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/
