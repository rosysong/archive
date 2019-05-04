
define Profile/N29
	NAME:=ROSINSON N29 Nas board
	PACKAGES:=kmod-usb2 kmod-usb-storage \
		kmod-usb-uhci kmod-usb-ohci
endef

define Profile/N29/Description
	Package set compatible with the ROSINSON N29 board.
endef

$(eval $(call Profile,N29))
