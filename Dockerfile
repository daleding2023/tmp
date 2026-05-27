#FROM neo4j:5.23-community
#20260521
#FROM memmachine/memmachine:latest-cpu
#FROM memmachine/memmachine:latest-gpu
FROM node:20-alpine3.19 AS builder
RUN npm install -g mint && npm cache clean --force
