FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04
# libpq-dev for PG
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y git python3 pip \
    wget sqlite3 tzdata libpq-dev default-libmysqlclient-dev \
    && apt-get clean
