#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
#FROM nginx:latest
FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libffi-dev \
    liblzma-dev \
    && rm -rf /var/lib/apt/lists/*

# 下载编译 Python3.11
RUN wget https://www.python.org/ftp/python/3.11.10/Python-3.11.10.tgz \
    && tar xzf Python-3.11.10.tgz \
    && cd Python-3.11.10 \
    && ./configure --enable-optimizations \
    && make -j$(nproc) \
    && make altinstall \
    && cd ../ \
    && rm -rf Python-3.11.10 Python-3.11.10.tgz

# altinstall 不会覆盖系统python，命令是 python3.11 / pip3.11
RUN python3.11 --version && pip3.11 --version
