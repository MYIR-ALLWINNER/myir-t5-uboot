cmd_drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o := ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc -Wp,-MD,drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/.de331_feat.o.d  -nostdinc -isystem /home/myir/t507/brandy/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabi/7.2.1/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./include/openssl -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Werror -fshort-wchar -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -I./arch/arm/mach-sunxi/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(de331_feat)"  -D"KBUILD_MODNAME=KBUILD_STR(de331_feat)" -c -o drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.c

source_drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o := drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.c

deps_drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o := \
  drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de_feat.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/use/stdint.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  /home/myir/t507/brandy/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/lib/gcc/arm-linux-gnueabi/7.2.1/include/stdbool.h \

drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o: $(deps_drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o)

$(deps_drivers/video/sunxi/disp2/disp/de/lowlevel_v33x/./de330/de331_feat.o):
