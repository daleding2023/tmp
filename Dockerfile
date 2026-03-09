##FROM langflowai/langflow:latest
#FROM flowiseai/flowise:latest
#FROM langgenius/dify-api:1.9.1
#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim
#FROM python:3.14 暂时无

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
FROM node:22-alpine

# Accept build argument for pnpm store path
ARG PNPM_STORE_PATH=/root/.local/share/pnpm/store

# Install pnpm at specific version (matching package.json)
RUN corepack enable && corepack install -g pnpm@10.26.2

RUN pnpm config set store-dir ${PNPM_STORE_PATH}
