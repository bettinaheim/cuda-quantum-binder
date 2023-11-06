FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
        python3.10 python3-pip \
    && python3.10 -m pip install cuda-quantum numpy matplotlib
COPY vqe.ipynb /home/cudaq/vqe.ipynb
