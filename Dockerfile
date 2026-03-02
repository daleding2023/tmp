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

#FROM gcr.io/distroless/nodejs22-debian12
FROM node:22-alpine
