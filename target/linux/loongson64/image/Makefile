#
# Copyright (C) 2009-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

KIMAGE:=$(BIN_DIR)/$(IMG_PREFIX)-vmlinux.bin

define Image/Prepare
	$(CP) $(KDIR)/vmlinux $(KIMAGE)
endef

define Image/Build/squashfs
	$(call prepare_generic_squashfs,$(KDIR)/root.squashfs)
	dd if=$(KDIR)/root.$(1) of=$(BIN_DIR)/$(IMG_PREFIX)-root.$(1) bs=128k conv=sync
	( \
			dd if=$(KIMAGE) bs=7680k conv=sync; \
		dd if=$(KDIR)/root.$(1) bs=128k conv=sync; \
	) > $(BIN_DIR)/$(IMG_PREFIX)-$(1)-sysupgrade.img
endef

define Image/Build
	$(call Image/Build/squashfs,squashfs)
endef

$(eval $(call BuildImage))
