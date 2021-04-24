FROM nvidia/cudagl:10.2-devel-ubuntu18.04
#pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

# python3.7을 포기함.
#RUN apt update && \
#    apt install -y software-properties-common && \
#    add-apt-repository ppa:deadsnakes/ppa && \
#    apt install -y python3.7
#RUN ln -s /usr/bin/python3.7 /usr/bin/python

RUN apt update && \
    apt install -y python3-pip
RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip

# CUDA 10.2
RUN pip install torch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2
RUN pip install nuscenes-devkit==1.1.0 tensorboardX tensorboardY efficientnet_pytorch
