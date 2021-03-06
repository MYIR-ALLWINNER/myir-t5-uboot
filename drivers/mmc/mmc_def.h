// SPDX-License-Identifier: GPL-2.0+
#ifndef __MMC_DEF__
#define __MMC_DEF__

#include <asm/types.h>
//#define  CONFIG_MMC_DEBUG_SUNXI

#ifdef CONFIG_MMC_DEBUG_SUNXI
#define MMCINFO(fmt, args...)	pr_err("[mmc]: "fmt, ##args)//err or info
#define MMCDBG(fmt, args...)	pr_err("[mmc]: "fmt, ##args)//dbg
#define MMCPRINT(fmt, args...)	pr_err(fmt, ##args)//data or register and so on
#else
#define MMCINFO(fmt, args...)	pr_err("[mmc]: "fmt, ##args)//err or info
#define MMCDBG(fmt...)
#define MMCPRINT(fmt...)
#endif

#define MMC_MSG_EN	(1U)
#define MMCMSG(d, fmt, args...) do {if ((d)->msglevel & MMC_MSG_EN)  pr_err("[mmc]: "fmt, ##args); } while (0)

#define DRIVER_VER  "uboot2018:2020-5-24 16:54:00-202109221409"

//secure storage relate
#define MAX_SECURE_STORAGE_MAX_ITEM             32
#define SDMMC_SECURE_STORAGE_START_ADD  (6*1024*1024/512)//6M
#define SDMMC_ITEM_SIZE                                 (4*1024/512)//4K


#endif
