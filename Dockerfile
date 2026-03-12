#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
FROM node:22-bookworm

# 安装 Bun（构建脚本需要）
RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/root/.bun/bin:${PATH}"

RUN corepack enable
