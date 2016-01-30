KERNEL_PATH?=/usr/src/linux-headers-$(shell uname -r)

EXTRA_CFLAGS=-I$(shell pwd)

obj-m:=xpad.o

all:
	$(MAKE) modules -C $(KERNEL_PATH) SUBDIRS=$(shell pwd)

install:
	cp -f xpad.ko /lib/modules/$(shell uname -r)/kernel/drivers/input/joystick
