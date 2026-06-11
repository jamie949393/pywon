FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo

COPY . /workspace/pywon
WORKDIR /workspace/pywon

RUN chmod +x pywon
