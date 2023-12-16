FROM debian:11

RUN apt-get update && \
	 apt install -y \
	 build-essential \
	 zlib1g-dev \
	 uuid-dev \
	 libdigest-sha-perl \
	 libelf-dev \
	 bc \
	 bzip2 \
	 bison \
	 flex \
	 git \
	 gnupg \
	 iasl \
	 m4 \
	 nasm \
	 patch \
	 python \
	 python2 \
	 python3 \
	 wget \
	 gnat \
	 cpio \
	 ccache \
	 pkg-config \
	 cmake \
	 libusb-1.0-0-dev \
	 autoconf \
	 texinfo \
	 ncurses-dev \
	 doxygen \
	 graphviz \
	 udev \
	 libudev1 \
	 libudev-dev \
	 automake \
	 libtool \
	 rsync \
	 innoextract

ENV BOARD librem_14
ENV TAR_OPTIONS --no-same-owner
WORKDIR /mnt/pureboot
CMD make
