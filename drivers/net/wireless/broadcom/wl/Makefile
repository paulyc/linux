ccflags-y += -I$(srctree)/drivers/net/wireless/broadcom/wl/include
ccflags-y += -DUSE_CFG80211
ldflags-y += $(srctree)/drivers/net/wireless/broadcom/wl/wlc_hybrid.o_shipped

obj-$(CONFIG_WL) += wl.o

wl-y := linux_osl.o wl_iw.o wl_linux.o wl_cfg80211_hybrid.o

