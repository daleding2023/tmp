#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
FROM registry.cn-hangzhou.aliyuncs.com/models2024/tmp:openclaw-local
RUN --mount=type=cache,id=openclaw-bookworm-apt-cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,id=openclaw-bookworm-apt-lists,target=/var/lib/apt,sharing=locked \
      apt-get update && \
      DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3-pip vim && \
      rm -f /usr/lib/python3.11/EXTERNALLY-MANAGED && \
      python3.11 -m pip install --upgrade pip && \
      python3.11 -m pip install uv
