FROM registry.cn-hangzhou.aliyuncs.com/models2024/tmp:ubuntu20py39
RUN pip3 install modelscope -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
#RUN pip3 install huggingface_hub
#RUN pip3 install huggingface-hub -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
