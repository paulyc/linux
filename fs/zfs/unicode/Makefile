ifneq ($(KBUILD_EXTMOD),)
src = $(srctree)/fs/zfs/unicode
obj = $(objtree)/fs/zfs/unicode
endif

MODULE := zunicode

obj-$(CONFIG_ZFS) := $(MODULE).o

$(MODULE)-objs += u8_textprep.o
$(MODULE)-objs += uconv.o
