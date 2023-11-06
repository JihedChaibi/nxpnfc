KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build

ccflags-y += -DDYNAMIC_DEBUG_MODULE

obj-$(CONFIG_NXP_NFC_I2C)		+= nxpnfc_i2c.o
nxpnfc_i2c-y				:= common.o i2c_drv.o

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(shell pwd) modules $(KBUILD_OPTIONS)

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(shell pwd) modules_install

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
