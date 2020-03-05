# no idea what its complaining about, tried everything I could think of:
# WARNING: could not find drivers/net/wireless/broadcom/wl/.wlc_hybrid.o.cmd for drivers/net/wireless/broadcom/wl/wlc_hybrid.o
# not sure it actually works either
# what new Make Devilry is this anyway?!?!

#ccflags-$(CONFIG_WL) := -DUSE_IW
ccflags-$(CONFIG_WL) := -DUSE_CFG80211
obj-$(CONFIG_WL) := wl.o
wl-y := linux_osl.o wl_linux.o wl_iw.o wl_cfg80211_hybrid.o wlc_hybrid.o
