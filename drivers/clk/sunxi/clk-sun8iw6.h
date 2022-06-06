/*
 * Copyright (C) 2013 Allwinnertech, kevin.z.m <kevin@allwinnertech.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * Adjustable factor-based clock implementation
 */
#ifndef __MACH_SUNXI_CLK_SUN8IW6_H
#define __MACH_SUNXI_CLK_SUN8IW6_H
#include "clk_factor.h"

/* CCMU Register List */
#define PLL_CPU0            0x0000
#define PLL_CPU1            0x0004
#define PLL_AUDIO           0x0008
#define PLL_VIDEO0          0x0010
#define PLL_VE              0x0018
#define PLL_DDR             0x0020
#define PLL_PERIPH          0x0028
#define PLL_GPU             0x0038
#define PLL_HSIC            0x0044
#define PLL_DE              0x0048
#define PLL_VIDEO1          0x004c

#define CPU_CFG             0x0050
#define AHB1_CFG            0x0054
#define APB2_CFG            0x0058
#define AHB2_CFG            0x005c
#define AHB1_GATE0          0x0060
#define AHB1_GATE1          0x0064
#define APB1_GATE           0x0068
#define APB2_GATE           0x006c
#define CCI400_CFG          0x0078
#define NAND_CFG            0x0080
#define SD0_CFG             0x0088
#define SD1_CFG             0x008c
#define SD2_CFG             0x0090
#define SS_CFG              0x009c
#define SPI0_CFG            0x00A0
#define SPI1_CFG            0x00A4
#define I2S0_CFG            0x00B0
#define I2S1_CFG            0x00B4
#define I2S2_CFG            0x00B8
#define TDM_CFG             0x00BC
#define SPDIF_CFG           0x00C0
#define USB_CFG             0x00CC
#define DRAM_CFG            0x00F4
#define DDR_CFG             0x00F8
#define MBUS_RST            0x00FC

#define DRAM_GATE           0x0100
#define LCD0_CFG            0x0118
#define LCD1_CFG            0x011C
#define MIPICSI_CFG         0x0130
#define CSI_CFG             0x0134
#define VE_CFG              0x013C
#define AVS_CFG             0x0144
#define HDMI_CFG            0x0150
#define HDMI_SLOW           0x0154
#define MBUS_CFG            0x015C
#define MIPI_DSI0           0x0168
#define MIPI_DSI1           0x016c
#define GPU_CORE            0x01A0
#define GPU_MEM             0x01A4
#define GPU_HYD             0x01A8

#define PLL_LOCK            0x0200
#define CPU_LOCK            0x0204
#define LOCK_STAT           0x020c
#define PLL_AUDIOPAT        0x0284
#define PLL_VIDEO0PAT       0x0288
#define AHB1_RST0           0x02C0
#define AHB1_RST1           0x02C4
#define AHB1_RST2           0x02C8
#define APB1_RST            0x02D0
#define APB2_RST            0x02D8
#define SUNXI_CLK_MAX_REG   0x02D8

/* PRCM Register List */
#define CPUS_CFG            0x0000
#define CPUS_APB0           0x000C
#define CPUS_APB0_GATE      0x0028
#define CPUS_CIR            0x0054
#define CPUS_APB0_RST       0x00B0
#define CPUS_CLK_MAX_REG    0x00B0

/* RTC Register List */
#define LOSC_OUT_GATE       0x0060

/* AC100 Register List */
#define CK32K_OUT_CTRL1     0xC1
#define CK32K_OUT_CTRL2     0xC2
#define CK32K_OUT_CTRL3     0xC3

#define F_N8X8_P16x1(nv, pv)                FACTOR_ALL(nv, 8, 8, 0, 0, 0, 0, 0, 0, pv, 16, 1, 0, 0, 0, 0, 0, 0)
#define F_N8X8_P0x2_D1S16X1(nv, pv, d1v)     FACTOR_ALL(nv, 8, 8, 0, 0, 0, 0, 0, 0, pv, 0, 2, d1v, 16, 1, 0, 0, 0)
#define F_N8X6_D1S16X1_D2S18X1(nv, d1v, d2v) FACTOR_ALL(nv, 8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, d1v, 16, 1, d2v, 18, 1)
#define F_N8X8_D1S16X1_D2S18X1(nv, d1v, d2v) FACTOR_ALL(nv, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, d1v, 16, 1, d2v, 18, 1)

#define PLLCPU(n, p, freq)            {F_N8X8_P16x1(n, p),  freq}
#define PLLVIDEO(n, p, d1, freq)       {F_N8X8_P0x2_D1S16X1(n, p, d1),  freq}
#define PLLVE(n, d1, d2, freq)         {F_N8X8_D1S16X1_D2S18X1(n, d1, d2), freq}
#define PLLDDR(n, d1, d2, freq)        {F_N8X6_D1S16X1_D2S18X1(n, d1, d2), freq}
#define PLLPERIPH(n, d1, d2, freq)     {F_N8X8_D1S16X1_D2S18X1(n, d1, d2), freq}
#define PLLGPU(n, d1, d2, freq)        {F_N8X8_D1S16X1_D2S18X1(n, d1, d2), freq}
#define PLLHSIC(n, d1, d2, freq)       {F_N8X8_D1S16X1_D2S18X1(n, d1, d2), freq}
#define PLLDE(n, d1, d2, freq)         {F_N8X8_D1S16X1_D2S18X1(n, d1, d2), freq}

#endif
