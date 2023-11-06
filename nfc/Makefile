KERNELRELEASE ?= $(shell uname -r)
BUILD_KERNEL_PATH ?= /lib/modules/$(KERNELRELEASE)/build
INSTALL_MOD_PATH ?= $(INSTALL_PATH)/lib/modules/$(KERNELRELEASE)
INSTALL_NXP_NFC_I2C_PATH ?= $(INSTALL_MOD_PATH)/kernel/drivers/nfc

obj-m := nxpnfc_i2c.o

all: nxpnfc_i2c.ko

nxpnfc_i2c.ko: common.o i2c_drv.o
	@echo "Compiling NXP-NFC kernel module"
	$(MAKE) -C $(BUILD_KERNEL_PATH) M=$(CURDIR) modules

install:
	rm -rf $(INSTALL_NXP_NFC_I2C_PATH)  
	mkdir -p $(INSTALL_NXP_NFC_I2C_PATH)
	install -m 644 nxpnfc_i2c.ko $(INSTALL_NXP_NFC_I2C_PATH)

clean:
	$(MAKE) -C $(BUILD_KERNEL_PATH) M=$(CURDIR) clean

.PHONY: all install clean
.EXPORT_ALL_VARIABLES: