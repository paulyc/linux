
obj-$(CONFIG_ZFS) += zavl.o icp.o zlua.o znvpair.o spl.o zunicode.o zcommon.o zfs.o

ccflags-y += -std=gnu99 -Wno-declaration-after-statement
ccflags-y += -Wno-format-zero-length
ccflags-y += -include $(src)/include/zfs_config.h
ccflags-y += -I$(src)/
ccflags-y += -I$(src)/icp/include
ccflags-y += -I$(src)/include/kernel
ccflags-y += -I$(src)/include/spl
ccflags-y += -I$(src)/include/zfs
ccflags-y += -I$(src)/include
ccflags-y += -I$(src)/../../include
ccflags-y += -DLUA_USE_LONGLONG
ccflags-y += -D_KERNEL
ccflags-y += -UDEBUG -DNDEBUG

asflags-y := $(ccflags-y)

zavl-y := avl/avl.o

icp-y += icp/illumos-crypto.o
icp-y += icp/api/kcf_cipher.o
icp-y += icp/api/kcf_digest.o
icp-y += icp/api/kcf_mac.o
icp-y += icp/api/kcf_miscapi.o
icp-y += icp/api/kcf_ctxops.o
icp-y += icp/core/kcf_callprov.o
icp-y += icp/core/kcf_prov_tabs.o
icp-y += icp/core/kcf_sched.o
icp-y += icp/core/kcf_mech_tabs.o
icp-y += icp/core/kcf_prov_lib.o
icp-y += icp/spi/kcf_spi.o
icp-y += icp/io/aes.o
icp-y += icp/io/edonr_mod.o
icp-y += icp/io/sha1_mod.o
icp-y += icp/io/sha2_mod.o
icp-y += icp/io/skein_mod.o
icp-y += icp/os/modhash.o
icp-y += icp/os/modconf.o
icp-y += icp/algs/modes/cbc.o
icp-y += icp/algs/modes/ccm.o
icp-y += icp/algs/modes/ctr.o
icp-y += icp/algs/modes/ecb.o
icp-y += icp/algs/modes/gcm_generic.o
icp-y += icp/algs/modes/gcm.o
icp-y += icp/algs/modes/modes.o
icp-y += icp/algs/aes/aes_impl_generic.o
icp-y += icp/algs/aes/aes_impl.o
icp-y += icp/algs/aes/aes_modes.o
icp-y += icp/algs/edonr/edonr.o
icp-y += icp/algs/sha1/sha1.o
icp-y += icp/algs/sha2/sha2.o
icp-y += icp/algs/sha1/sha1.o
icp-y += icp/algs/skein/skein.o
icp-y += icp/algs/skein/skein_block.o
icp-y += icp/algs/skein/skein_iv.o

icp-$(CONFIG_X86_64) += icp/asm-x86_64/aes/aeskey.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/aes/aes_amd64.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/aes/aes_aesni.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/modes/gcm_pclmulqdq.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/modes/aesni-gcm-x86_64.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/modes/ghash-x86_64.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/sha1/sha1-x86_64.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/sha2/sha256_impl.o
icp-$(CONFIG_X86_64) += icp/asm-x86_64/sha2/sha512_impl.o

icp-$(CONFIG_X86) += icp/algs/modes/gcm_pclmulqdq.o
icp-$(CONFIG_X86) += icp/algs/aes/aes_impl_aesni.o
icp-$(CONFIG_X86) += icp/algs/aes/aes_impl_x86-64.o

# Suppress objtool "can't find jump dest instruction at" warnings.  They
# are caused by the constants which are defined in the text section of the
# assembly file using .byte instructions (e.g. bswap_mask).  The objtool
# utility tries to interpret them as opcodes and obviously fails doing so.
OBJECT_FILES_NON_STANDARD_aesni-gcm-x86_64.o := y
OBJECT_FILES_NON_STANDARD_ghash-x86_64.o := y

zlua-y += lua/lapi.o
zlua-y += lua/lauxlib.o
zlua-y += lua/lbaselib.o
zlua-y += lua/lcode.o
zlua-y += lua/lcompat.o
zlua-y += lua/lcorolib.o
zlua-y += lua/lctype.o
zlua-y += lua/ldebug.o
zlua-y += lua/ldo.o
zlua-y += lua/lfunc.o
zlua-y += lua/lgc.o
zlua-y += lua/llex.o
zlua-y += lua/lmem.o
zlua-y += lua/lobject.o
zlua-y += lua/lopcodes.o
zlua-y += lua/lparser.o
zlua-y += lua/lstate.o
zlua-y += lua/lstring.o
zlua-y += lua/lstrlib.o
zlua-y += lua/ltable.o
zlua-y += lua/ltablib.o
zlua-y += lua/ltm.o
zlua-y += lua/lvm.o
zlua-y += lua/lzio.o
zlua-y += lua/setjmp/setjmp.o

znvpair-y += nvpair/nvpair.o
znvpair-y += nvpair/fnvpair.o
znvpair-y += nvpair/nvpair_alloc_spl.o
znvpair-y += nvpair/nvpair_alloc_fixed.o

spl-y += spl/spl-atomic.o
spl-y += spl/spl-condvar.o
spl-y += spl/spl-cred.o
spl-y += spl/spl-err.o
spl-y += spl/spl-generic.o
spl-y += spl/spl-kmem.o
spl-y += spl/spl-kmem-cache.o
spl-y += spl/spl-kstat.o
spl-y += spl/spl-proc.o
spl-y += spl/spl-procfs-list.o
spl-y += spl/spl-taskq.o
spl-y += spl/spl-thread.o
spl-y += spl/spl-trace.o
spl-y += spl/spl-tsd.o
spl-y += spl/spl-vmem.o
spl-y += spl/spl-xdr.o
spl-y += spl/spl-zlib.o

zunicode-y += unicode/u8_textprep.o
zunicode-y += unicode/uconv.o

zcommon-y += zcommon/cityhash.o
zcommon-y += zcommon/zfeature_common.o
zcommon-y += zcommon/zfs_comutil.o
zcommon-y += zcommon/zfs_deleg.o
zcommon-y += zcommon/zfs_fletcher.o
zcommon-y += zcommon/zfs_fletcher_superscalar.o
zcommon-y += zcommon/zfs_fletcher_superscalar4.o
zcommon-y += zcommon/zfs_namecheck.o
zcommon-y += zcommon/zfs_prop.o
zcommon-y += zcommon/zfs_uio.o
zcommon-y += zcommon/zpool_prop.o
zcommon-y += zcommon/zprop_common.o

zcommon-$(CONFIG_X86)   += zcommon/zfs_fletcher_intel.o
zcommon-$(CONFIG_X86)   += zcommon/zfs_fletcher_sse.o
zcommon-$(CONFIG_X86)   += zcommon/zfs_fletcher_avx512.o
zcommon-$(CONFIG_ARM64) += zcommon/zfs_fletcher_aarch64_neon.o

zfs-y += zfs/abd.o
zfs-y += zfs/aggsum.o
zfs-y += zfs/arc.o
zfs-y += zfs/blkptr.o
zfs-y += zfs/bplist.o
zfs-y += zfs/bpobj.o
zfs-y += zfs/bptree.o
zfs-y += zfs/btree.o
zfs-y += zfs/bqueue.o
zfs-y += zfs/dataset_kstats.o
zfs-y += zfs/dbuf.o
zfs-y += zfs/dbuf_stats.o
zfs-y += zfs/ddt.o
zfs-y += zfs/ddt_zap.o
zfs-y += zfs/dmu.o
zfs-y += zfs/dmu_diff.o
zfs-y += zfs/dmu_object.o
zfs-y += zfs/dmu_objset.o
zfs-y += zfs/dmu_recv.o
zfs-y += zfs/dmu_redact.o
zfs-y += zfs/dmu_send.o
zfs-y += zfs/dmu_traverse.o
zfs-y += zfs/dmu_tx.o
zfs-y += zfs/dmu_zfetch.o
zfs-y += zfs/dnode.o
zfs-y += zfs/dnode_sync.o
zfs-y += zfs/dsl_bookmark.o
zfs-y += zfs/dsl_crypt.o
zfs-y += zfs/dsl_dataset.o
zfs-y += zfs/dsl_deadlist.o
zfs-y += zfs/dsl_deleg.o
zfs-y += zfs/dsl_destroy.o
zfs-y += zfs/dsl_dir.o
zfs-y += zfs/dsl_pool.o
zfs-y += zfs/dsl_prop.o
zfs-y += zfs/dsl_scan.o
zfs-y += zfs/dsl_synctask.o
zfs-y += zfs/dsl_userhold.o
zfs-y += zfs/edonr_zfs.o
zfs-y += zfs/fm.o
zfs-y += zfs/gzip.o
zfs-y += zfs/hkdf.o
zfs-y += zfs/lz4.o
zfs-y += zfs/lzjb.o
zfs-y += zfs/metaslab.o
zfs-y += zfs/mmp.o
zfs-y += zfs/multilist.o
zfs-y += zfs/objlist.o
zfs-y += zfs/pathname.o
zfs-y += zfs/range_tree.o
zfs-y += zfs/refcount.o
zfs-y += zfs/rrwlock.o
zfs-y += zfs/sa.o
zfs-y += zfs/sha256.o
zfs-y += zfs/skein_zfs.o
zfs-y += zfs/spa.o
zfs-y += zfs/spa_boot.o
zfs-y += zfs/spa_checkpoint.o
zfs-y += zfs/spa_config.o
zfs-y += zfs/spa_errlog.o
zfs-y += zfs/spa_history.o
zfs-y += zfs/spa_log_spacemap.o
zfs-y += zfs/spa_misc.o
zfs-y += zfs/space_map.o
zfs-y += zfs/space_reftree.o
zfs-y += zfs/txg.o
zfs-y += zfs/uberblock.o
zfs-y += zfs/unique.o
zfs-y += zfs/vdev.o
zfs-y += zfs/vdev_cache.o
zfs-y += zfs/vdev_indirect.o
zfs-y += zfs/vdev_indirect_births.o
zfs-y += zfs/vdev_indirect_mapping.o
zfs-y += zfs/vdev_initialize.o
zfs-y += zfs/vdev_label.o
zfs-y += zfs/vdev_mirror.o
zfs-y += zfs/vdev_missing.o
zfs-y += zfs/vdev_queue.o
zfs-y += zfs/vdev_raidz.o
zfs-y += zfs/vdev_raidz_math.o
zfs-y += zfs/vdev_raidz_math_scalar.o
zfs-y += zfs/vdev_removal.o
zfs-y += zfs/vdev_root.o
zfs-y += zfs/vdev_trim.o
zfs-y += zfs/zap.o
zfs-y += zfs/zap_leaf.o
zfs-y += zfs/zap_micro.o
zfs-y += zfs/zcp.o
zfs-y += zfs/zcp_get.o
zfs-y += zfs/zcp_global.o
zfs-y += zfs/zcp_iter.o
zfs-y += zfs/zcp_set.o
zfs-y += zfs/zcp_synctask.o
zfs-y += zfs/zfeature.o
zfs-y += zfs/zfs_byteswap.o
zfs-y += zfs/zfs_fm.o
zfs-y += zfs/zfs_fuid.o
zfs-y += zfs/zfs_ioctl.o
zfs-y += zfs/zfs_log.o
zfs-y += zfs/zfs_onexit.o
zfs-y += zfs/zfs_quota.o
zfs-y += zfs/zfs_ratelimit.o
zfs-y += zfs/zfs_replay.o
zfs-y += zfs/zfs_rlock.o
zfs-y += zfs/zfs_sa.o
zfs-y += zfs/zil.o
zfs-y += zfs/zio.o
zfs-y += zfs/zio_checksum.o
zfs-y += zfs/zio_compress.o
zfs-y += zfs/zio_inject.o
zfs-y += zfs/zle.o
zfs-y += zfs/zrlock.o
zfs-y += zfs/zthr.o
zfs-y += zfs/zvol.o

# Suppress incorrect warnings from versions of objtool which are not
# aware of x86 EVEX prefix instructions used for AVX512.
OBJECT_FILES_NON_STANDARD_vdev_raidz_math_avx512bw.o := y
OBJECT_FILES_NON_STANDARD_vdev_raidz_math_avx512f.o := y

zfs-$(CONFIG_X86)   += zfs/vdev_raidz_math_sse2.o
zfs-$(CONFIG_X86)   += zfs/vdev_raidz_math_ssse3.o
zfs-$(CONFIG_X86)   += zfs/vdev_raidz_math_avx2.o
zfs-$(CONFIG_X86)   += zfs/vdev_raidz_math_avx512f.o
zfs-$(CONFIG_X86)   += zfs/vdev_raidz_math_avx512bw.o

zfs-$(CONFIG_ARM64) += zfs/vdev_raidz_math_aarch64_neon.o
zfs-$(CONFIG_ARM64) += zfs/vdev_raidz_math_aarch64_neonx2.o

zfs-$(CONFIG_PPC)   += zfs/vdev_raidz_math_powerpc_altivec.o
zfs-$(CONFIG_PPC64) += zfs/vdev_raidz_math_powerpc_altivec.o

ifeq ($(CONFIG_ALTIVEC),y)
$(obj)/zfs/vdev_raidz_math_powerpc_altivec.o: c_flags += -maltivec
endif

zfs-y += zfs/abd_os.o
zfs-y += zfs/arc_os.o
zfs-y += zfs/mmp_os.o
zfs-y += zfs/policy.o
zfs-y += zfs/trace.o
zfs-y += zfs/qat.o
zfs-y += zfs/qat_compress.o
zfs-y += zfs/qat_crypt.o
zfs-y += zfs/spa_misc_os.o
zfs-y += zfs/spa_stats.o
zfs-y += zfs/vdev_disk.o
zfs-y += zfs/vdev_file.o
zfs-y += zfs/zfs_acl.o
zfs-y += zfs/zfs_ctldir.o
zfs-y += zfs/zfs_debug.o
zfs-y += zfs/zfs_dir.o
zfs-y += zfs/zfs_file_os.o
zfs-y += zfs/zfs_ioctl_os.o
zfs-y += zfs/zfs_sysfs.o
zfs-y += zfs/zfs_vfsops.o
zfs-y += zfs/zfs_vnops.o
zfs-y += zfs/zfs_znode.o
zfs-y += zfs/zio_crypt.o
zfs-y += zfs/zpl_ctldir.o
zfs-y += zfs/zpl_export.o
zfs-y += zfs/zpl_file.o
zfs-y += zfs/zpl_inode.o
zfs-y += zfs/zpl_super.o
zfs-y += zfs/zpl_xattr.o
zfs-y += zfs/zvol_os.o


