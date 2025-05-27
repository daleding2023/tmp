#FROM python:3.12-slim-bookworm
#FROM node:20-alpine
FROM node:20
RUN npm install -g supergateway
RUN npm install -g @modelcontextprotocol/server-filesystem
RUN apt-get update -y && apt-get install -y python3.12 python3.12-distutils
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
RUN /bin/uv tool uvx mcp-server-fetch
RUN curl -fsSL https://deno.land/install.sh | sh
ENV PATH="/root/.deno/bin:$PATH"
RUN deno install -A jsr:@deno/deployctl --global
RUN deno install -A jsr:@omedia/mcp-server-drupal  --global
