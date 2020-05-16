
MODULE := spl

obj-$(CONFIG_ZFS) := $(MODULE).o

ccflags-y := $(ZFS_MODULE_CFLAGS) $(ZFS_MODULE_CPPFLAGS)


-include $(src)/../os/linux/spl/Makefile
