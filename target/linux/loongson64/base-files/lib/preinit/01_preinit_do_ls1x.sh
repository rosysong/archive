#!/bin/sh

do_ls2x() {
	. /lib/ls2x.sh

	ls2x_board_detect
}

boot_hook_add preinit_main do_ls2x
