set -x
#
# This file is subject to the terms and conditions of the GNU General Public
# License.  See the file "COPYING" in the main directory of this archive
# for more details.
#
# Copyright (C) 1995 by Linus Torvalds
#
# Adapted from code in arch/i386/boot/Makefile by H. Peter Anvin
#
# "make install" script for i386 architecture
#
# Arguments:
#   $1 - kernel version
#   $2 - kernel image file
#   $3 - kernel map file
#   $4 - default install path (blank if root directory)
#

echo make install the Freshnix Maker

if [ ! -d "/lib/modules/$1" ]; then
	echo run make modules_install first
	exit 2
fi

verify () {
	if [ ! -f "$1" ]; then
		echo ""                                                   1>&2
		echo " *** Missing file: $1"                              1>&2
		echo ' *** You need to run "make" before "make install".' 1>&2
		echo ""                                                   1>&2
		exit 1
 	fi
}

# Make sure the files actually exist
verify "$2"
verify "$3"

# User may have a custom install script

if [ -x ~/bin/${INSTALLKERNEL} ]; then exec ~/bin/${INSTALLKERNEL} "$@"; fi
if [ -x /sbin/${INSTALLKERNEL} ]; then exec /sbin/${INSTALLKERNEL} "$@"; fi

# Default install - same as make zlilo
echo Copy kernel and map

if [ -f "$4/vmlinuz" ]; then
	mv -f "$4/vmlinuz" "$4/vmlinuz.old"
fi

if [ -f "$4/System.map" ]; then
	mv -f "$4/System.map" "$4/System.old"
fi

cat "$2" > "$4/vmlinuz-$1"
cp "$3" "$4/System.map-$1"

echo Symlink defaults
ln -sf "$4/vmlinuz-$1" "$4/vmlinuz"
ln -sf "$4/System.map-$1" "$4/System.map"

echo Make init ramdisk
mv -f "$4/initramfs-$(uname -r).img" "$4/initramfs-$(uname -r).old"
mv -f "$4/initramfs-$(uname -r)-fallback.img" "$4/initramfs-$(uname -r)-fallback.old"

/usr/bin/mkinitcpio -p default

mv -f "$4/initramfs-default.img" "$4/initramfs-$1.img"
mv -f "$4/initramfs-default-fallback.img" "$4/initramfs-$1-fallback.img"

echo Symlink init ramdisk
ln -s "$4/initramfs-$1.img" "$4/initramfs-default.img"
ln -s "$4/initramfs-$1-fallback.img" "$4/initramfs-default-fallback.img"

echo Write grub menuentries
cat <<EOF > /etc/grub.d/01_freshnix
#!/bin/sh
exec tail -n +3 \$0
menuentry 'Linux ()' {
	linux $4/vmlinuz-$1
	initrd $4/initramfs-$1.img
}

menuentry 'Linux (Freshnix-SymlinkSurprise)' {
	linux $4/vmlinuz
	initrd $4/initramfs-default.img
}
EOF

chmod +x /etc/grub.d/01_freshnix

echo Make grub config

grub-mkconfig -o /boot/grub/grub.cfg

echo Voilà "$1" "$2" "$3" "$4"



