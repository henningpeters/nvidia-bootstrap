FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get -y install wget && \
    wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.66/NVIDIA-Linux-x86_64-384.66.run -O /root/nvidia.run

COPY . /root

CMD cp /root/* /host && \
    chroot /host bash /install.sh
