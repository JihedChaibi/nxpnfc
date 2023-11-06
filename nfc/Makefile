obj-m := nxpnfc_i2c.o
DESTDIR ?= $(INSTALL_MOD_PATH)

modules all:
	$(MAKE) -C $(KERNEL_SRC) M=$(CURDIR) modules

modules_install install: all
	$(MAKE) -C $(KERNEL_SRC) M=$(CURDIR) modules_install \
		INSTALL_MOD_PATH=$(DESTDIR) INSTALL_MOD_DIR="kernel/drivers/misc"

clean:
+	$(MAKE) -C $(KERNEL_SRC) M=$(CURDIR) clean

.PHONY: all install clean
.EXPORT_ALL_VARIABLES: