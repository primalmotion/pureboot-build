FROM debian:10

RUN apt-get update && \
	apt-get install -y \
		build-essential \
		wget \
		git \
		m4 \
		bison \
		zlib1g-dev \
		libbison-dev \
		flex \
		gnat  \
		rsync \
		texinfo \
		bc \
		libelf-dev \
		cpio \
		pkg-config \
		libusb-1.0.0-dev \
		python2

USER 1000
ENV BOARD librem_14
WORKDIR /mnt/pureboot
CMD make

