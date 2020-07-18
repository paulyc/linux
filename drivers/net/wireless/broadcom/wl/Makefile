ccflags-y += -I$(srctree)/drivers/net/wireless/broadcom/wl/include
ccflags-y += -I$(srctree)/drivers/net/wireless/broadcom/wl/shared/bcmwifi/include
ccflags-y += -DUSE_CFG80211
ldflags-y += $(srctree)/drivers/net/wireless/broadcom/wl/lib/wlc_hybrid.o_shipped

obj-$(CONFIG_WL) += wl.o

wl-y := shared/linux_osl.o wl/sys/wl_iw.o wl/sys/wl_linux.o wl/sys/wl_cfg80211_hybrid.o

