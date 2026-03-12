#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bash \
    ca-certificates \
    chromium \
    curl \
    fonts-liberation \
    fonts-noto-color-emoji \
    git \
    jq \
    novnc \
    python3 \
    socat \
    websockify \
    x11vnc \
    xvfb \
  && rm -rf /var/lib/apt/lists/*
