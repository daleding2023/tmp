#20241219  v0.6.2 and v0.6.3
#FROM eosphorosai/dbgpt:latest
#FROM eosphorosai/dbgpt:v0.5.9
#FROM eosphorosai/dbgpt:v0.6.1

#FROM eosphorosai/dbgpt-openai:latest
#FROM eosphorosai/dbgpt-openai:v0.7.1
#FROM eosphorosai/dbgpt-openai:v0.7.2
#FROM eosphorosai/dbgpt-openai:v0.8.0
#FROM eosphorosai/dbgpt:v0.8.0
#FROM mysql/mysql-server

#FROM registry.cn-hangzhou.aliyuncs.com/models2024/tmp:dbgpt-openai-v0.8.0
#WORKDIR /
# 安装curl（Debian/Ubuntu系用apt，DB-GPT官方镜像是debian基础）
#RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*
FROM eosphorosai/dbgpt-openai:v0.8.1
