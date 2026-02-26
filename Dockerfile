##FROM langflowai/langflow:latest
#FROM flowiseai/flowise:latest
#FROM langgenius/dify-api:1.9.1
#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim
#FROM python:3.14 暂时无

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
#RUN apt-get update && \
#    apt-get install -y nginx && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*
    
#FROM python:3.13-slim
#RUN apt-get update && \
#    apt-get install -y wget && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*

FROM ghcr.io/puppeteer/puppeteer:latest
USER root
# 更新系统包（去掉sudo，直接执行）
RUN apt update && \
    # 安装Python 3.11相关工具（精简命令，合并RUN减少镜像层）
    apt install -y --no-install-recommends python3-pip python3.11-venv && \
    # 清理apt缓存，减小镜像体积
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip && \
    pip3 install flask
