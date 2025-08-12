#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim
#FROM python:3.14 暂时无
FROM minio/minio:RELEASE.2025-06-13T11-33-47Z-cpuv1
#FROM python:3.13-slim
#RUN apt-get update && \
#    apt-get install -y wget && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*
