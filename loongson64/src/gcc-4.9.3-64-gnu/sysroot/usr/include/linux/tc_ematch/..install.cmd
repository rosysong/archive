cmd_dest/include/linux/tc_ematch/.install := /bin/sh scripts/headers_install.sh dest/include/linux/tc_ematch /mnt/opt/gcc-4.9.3-64-gnu/build/linux-3.10/include/uapi/linux/tc_ematch tc_em_cmp.h tc_em_meta.h tc_em_nbyte.h tc_em_text.h; /bin/sh scripts/headers_install.sh dest/include/linux/tc_ematch /mnt/opt/gcc-4.9.3-64-gnu/build/linux-3.10/include/linux/tc_ematch ; /bin/sh scripts/headers_install.sh dest/include/linux/tc_ematch /mnt/opt/gcc-4.9.3-64-gnu/build/linux-3.10/include/generated/uapi/linux/tc_ematch ; for F in ; do echo "\#include <asm-generic/$$F>" > dest/include/linux/tc_ematch/$$F; done; touch dest/include/linux/tc_ematch/.install
