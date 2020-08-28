FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig openjdk-8-jdk python vim dosfstools rsync -y
RUN useradd -ms /bin/bash  builder
USER builder
ENV  USER builder
ENV  LC_ALL C
WORKDIR /proj
CMD /bin/bash

# GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"
# sudo update-grub
# sudo reboot
# docker run -m 24g -i -t -v ~/proj:/proj aospbuilder
