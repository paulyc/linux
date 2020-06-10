ccflags-y += -I$(src)/include
ccflags-y += -I$(src)/wl/sys
ccflags-y += -I$(src)/bcmwifi/include
ccflags-y += -I$(src)/common/include
ccflags-y += -I$(src)/shared/bcmwifi/include
ccflags-y += -DUSE_CFG80211

obj-$(CONFIG_WL) += wl.o

wl-objs :=
wl-objs += shared/linux_osl.o
wl-objs += wl/sys/wl_iw.o
wl-objs += wl/sys/wl_linux.o
wl-objs += wl/sys/wl_cfg80211_hybrid.o
wl-objs += lib/wlc_hybrid.o

