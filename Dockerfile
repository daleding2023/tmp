#FROM ollama/ollama:latest
#FROM ollama/ollama:0.4.0-rc5
#FROM ollama/ollama:0.4.1
#FROM ollama/ollama:0.5.4
#FROM ollama/ollama:0.5.8-rc6
#0.6.6
#v0.11.4
#20260403
#FROM ollama/ollama:latest
#v0.20.0
FROM registry.cn-hangzhou.aliyuncs.com/models2024/tmp:ollama
RUN ollama pull qwen3.5:35b
