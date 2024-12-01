ifneq ($(KERNELRELEASE),)
obj-m += hello1.o
obj-m += hello2.o
else
KDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) M=$(PWD)

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
endif
