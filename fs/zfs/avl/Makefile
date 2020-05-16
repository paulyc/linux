
MODULE := zavl

obj-$(CONFIG_ZFS) := $(MODULE).o

ccflags-y := $(ZFS_MODULE_CFLAGS) $(ZFS_MODULE_CPPFLAGS)
ccflags-y += -I../include

$(MODULE)-objs += avl.o
