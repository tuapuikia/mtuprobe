FROM python:3.8

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install iputils-ping -y \
    && rm -rf /var/lib/apt/lists/*

RUN pip install mtuprobe

