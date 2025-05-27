#FROM mintplexlabs/anythingllm
#FROM forceless/pptagent
#FROM node:slim
#ENV NODE_VERSION=23.9.0
#ENV YARN_VERSION=1.22.22
#FROM node:latest
#FROM node:18.20.5
#FROM node:18.20.5-slim
#FROM tabbyml/tabby:nightly
#FROM ubuntu:22.04
#FROM rust:latest
#########################################################################################
#FROM ubuntu:latest
#ARG NODE_VERSION=20
#RUN apt update && apt install curl -y
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
#ENV NVM_DIR=/root/.nvm
#RUN bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION"
#ENTRYPOINT ["bash", "-c", "source $NVM_DIR/nvm.sh && exec \"$@\"", "--"]
#CMD ["/bin/bash"]
#################################################################################################
#FROM qwenllm/qwen-omni:2.5-cu121
#FROM codercom/code-server:4.99.0
#FROM vimagick/mantisbt:latest
#FROM mantisbt/mantisbt
#FROM node:22.14.0
#20.19.0
#FROM node:20
#FROM node:22.12-alpine
#FROM python:3.12-slim-bookworm
FROM node:20-alpine
RUN npm install -g supergateway
#RUN npm install -g @modelcontextprotocol/server-filesystem
#EXPOSE 8000
#ENTRYPOINT ["supergateway"]
#CMD ["--help"]
RUN apk add --no-cache python3 coreutils
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
#RUN uvx install mcp-server-fetch
RUN /bin/uv tool uvx mcp-server-fetch
#RUN curl -fsSL https://deno.land/install.sh | sh
