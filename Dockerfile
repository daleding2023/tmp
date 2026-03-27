#FROM node:lts-alpine
#FROM python:3.11
#FROM python:3.11.8-slim

#docker pull registry.cn-hangzhou.aliyuncs.com/models2024/tmp:node 
#FROM node:24-slim  DaleDing20260226
FROM registry.cn-hangzhou.aliyuncs.com/models2024/tmp:openclaw-browseruseweb
RUN npm i -g @steipete/summarize
RUN npm install -g agent-browser
RUN agent-browser install --with-deps

# Download Chrome from Chrome for Testing (first time only)
RUN agent-browser install
RUN pip install --no-cache-dir --break-system-packages markitdown yt-dlp openai-whisper
