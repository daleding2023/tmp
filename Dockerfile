#FROM python:3.12-slim-bookworm
#FROM node:20-alpine
FROM node:20
RUN npm install -g supergateway
RUN npm install -g @modelcontextprotocol/server-filesystem

RUN apt-get update
RUN apt-get install -y build-essential zlib1g-dev libncurses5-dev \
  libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl

#--with-openssl=/usr/include/openssl
ENV PYTHON_VERSION "3.12.8" 
RUN wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
RUN tar xvf Python-${PYTHON_VERSION}.tgz \
    && cd Python-${PYTHON_VERSION} \
    && ./configure --prefix=/usr/local --enable-optimizations \
    && make \
    && make altinstall \
    && cd ../ \
    && rm -rf Python-${PYTHON_VERSION}*

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
RUN /bin/uv tool uvx mcp-server-fetch

RUN curl -fsSL https://deno.land/install.sh | sh
ENV PATH="/root/.deno/bin:$PATH"
RUN deno install -A jsr:@deno/deployctl --global
RUN deno install -A jsr:@omedia/mcp-server-drupal  --global
