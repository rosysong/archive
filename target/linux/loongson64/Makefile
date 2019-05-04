#
# Copyright (C) 2018 OpenWrt.org
# Copyright (C) 2018 RosyWrt Team
# Copyright (C) 2018 Rosy Song <rosysong@rosinson.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=mips64
BOARD:=loongson64
BOARDNAME:=Loongson64 Boards
FEATURES:=nand usb squashfs
SUBTARGETS:=ls2k

KERNEL_PATCHVER:=3.10

DEVICE_TYPE:=other

DEFAULT_PACKAGES += \
	kmod-leds-gpio

define Target/Description
	Build firmware images for Loongson2x based boards.
endef

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))
