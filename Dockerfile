FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive

RUN chroot /host
RUN apt-get -y update
RUN apt-get -y install wget build-essential
RUN wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.66/NVIDIA-Linux-x86_64-384.66.run
RUN bash NVIDIA-Linux-x86_64-384.66.run -s
