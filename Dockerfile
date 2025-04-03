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
FROM ubuntu:latest
ARG NODE_VERSION=20

# install curl
RUN apt update && apt install curl -y

# install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

# set env
ENV NVM_DIR=/root/.nvm

# install node
RUN bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION"

# set ENTRYPOINT for reloading nvm-environment
ENTRYPOINT ["bash", "-c", "source $NVM_DIR/nvm.sh && exec \"$@\"", "--"]

# set cmd to bash
CMD ["/bin/bash"]
