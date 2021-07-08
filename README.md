# pureboot-build

This is a simple Docker container that packages the needed dependencies to build
[pureboot](https://source.puri.sm/firmware/pureboot).

## Build the container

Build the container

	docker build -t pureboot-build .

## Build Pureboot

Clone Pureboot somewhere:

	git clone https://source.puri.sm/firmware/pureboot

Then checkout the branch you want, hack what you need, do what you must. When
ready, mount the repo into the container to start the build (full path):

	docker run -t -v /full/path/to/somewhere/pureboot:/mnt/pureboot pureboot-build

By default, the bios is built for the Librem 14. You can select another board by
setting the `BOARD` variable:

	docker run -e BOARD=librem_mini ...

Only tested for Librem 14.
