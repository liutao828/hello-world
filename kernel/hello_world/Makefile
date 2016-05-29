ifeq ($(KERNELRELEASE),)

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

modules:
#make -C $(KDIR) M=$(PWD) modules
	$(MAKE) -C $(KDIR) M=$(PWD) modules
modules_install:
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install
clean:
	rm -rf *.o *.ko *.mod.c .*.cmd *.markers *.order *.symvers .tmp_versions *~
.PHONY: modules modules_install clean
else
	obj-m :=hello.o
endif

