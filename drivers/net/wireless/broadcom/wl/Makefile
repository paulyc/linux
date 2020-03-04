# no idea what its complaining about:
# WARNING: could not find drivers/net/wireless/broadcom/wl/.wlc_hybrid.o.cmd for drivers/net/wireless/broadcom/wl/wlc_hybrid.o
# not sure it actually works either

#ccflags-$(CONFIG_WL) := -DUSE_CFG80211
#ccflags-$(CONFIG_WL) := -DUSE_IW
obj-$(CONFIG_WL) += wl.o
wl-y := linux_osl.o wl_linux.o wl_iw.o wl_cfg80211_hybrid.o wlc_hybrid.o
