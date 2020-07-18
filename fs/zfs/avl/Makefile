ifneq ($(KBUILD_EXTMOD),)
src = $(srctree)/fs/zfs/avl
obj = $(objtree)/fs/zfs/avl
endif

MODULE := zavl

obj-$(CONFIG_ZFS) := $(MODULE).o

$(MODULE)-objs += avl.o
