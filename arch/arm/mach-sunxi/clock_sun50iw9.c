/*
 * Copyright 2000-2009
 * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 *
 * SPDX-License-Identifier:	GPL-2.0+
*/

#include <common.h>
#include <asm/io.h>
#include <asm/arch/cpu.h>
#include <asm/arch/clock.h>
#include <asm/arch/timer.h>
#include <fdt_support.h>
#include <sunxi_board.h>
#include <asm/arch/efuse.h>

void clock_init_uart(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;

	/* uart clock source is apb2 */
	writel(APB2_CLK_SRC_OSC24M|
	       APB2_CLK_RATE_N_1|
	       APB2_CLK_RATE_M(1),
	       &ccm->apb2_cfg);

	clrbits_le32(&ccm->uart_gate_reset,
		     1 << (CONFIG_CONS_INDEX - 1));
	udelay(2);

	clrbits_le32(&ccm->uart_gate_reset,
		     1 << (RESET_SHIFT + CONFIG_CONS_INDEX - 1));
	udelay(2);
	/* deassert uart reset */
	setbits_le32(&ccm->uart_gate_reset,
		     1 << (RESET_SHIFT + CONFIG_CONS_INDEX - 1));
	/* open the clock for uart */
	setbits_le32(&ccm->uart_gate_reset,
		     1 << (CONFIG_CONS_INDEX - 1));
}


static int clk_get_pll_para(struct core_pll_freq_tbl *factor, int pll_clk)
{
	int index;

	index = pll_clk / 24;
	factor->FactorP = 0;
	factor->FactorN = (index - 1);
	factor->FactorM = 0;

	return 0;
}

int clock_set_corepll(int frequency)
{
	unsigned int reg_val = 0;
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	struct core_pll_freq_tbl  pll_factor;

	if (frequency == clock_get_corepll())
		return 0;
	else if (frequency >= 1440)
		frequency = 1440;


	/* switch to 24M*/
	reg_val = readl(&ccm->cpu_axi_cfg);
	reg_val &= ~(0x03 << 24);
	writel(reg_val, &ccm->cpu_axi_cfg);
	__udelay(20);

	/*pll output disable*/
	reg_val = readl(&ccm->pll1_cfg);
	reg_val &= ~(0x01 << 31);
	writel(reg_val, &ccm->pll1_cfg);

	/*get config para form freq table*/
	clk_get_pll_para(&pll_factor, frequency);

	reg_val = readl(&ccm->pll1_cfg);
	reg_val &= ~((0x03 << 16) | (0xff << 8)  | (0x03 << 0));
	reg_val |=  (pll_factor.FactorP << 16) | (pll_factor.FactorN << 8) | (pll_factor.FactorM << 0) ;
	writel(reg_val, &ccm->pll1_cfg);
	__udelay(20);

	/*enable lock*/
	reg_val = readl(&ccm->pll1_cfg);
	reg_val |=  (0x1 << 29);
	writel(reg_val, &ccm->pll1_cfg);

	/*enable pll*/
	reg_val = readl(&ccm->pll1_cfg);
	reg_val |=	(0x1 << 31);
	writel(reg_val, &ccm->pll1_cfg);

#ifndef FPGA_PLATFORM
	do {
		reg_val = readl(&ccm->pll1_cfg);
	} while (!(reg_val & (0x1 << 28)));
#endif

	/*disable lock*/
	reg_val = readl(&ccm->pll1_cfg);
	reg_val &= ~(0x1 << 29);
	writel(reg_val, &ccm->pll1_cfg);

	/* switch clk src to COREPLL*/
	reg_val = readl(&ccm->cpu_axi_cfg);
	reg_val &= ~(0x03 << 24);
	reg_val |=  (0x03 << 24);
	writel(reg_val, &ccm->cpu_axi_cfg);

	return  0;
}



uint clock_get_pll6(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	uint reg_val;
	uint factor_n, factor_m0,factor_m1, pll6;

	reg_val = readl(&ccm->pll6_cfg);

	factor_n = ((reg_val >> 8) & 0xff) + 1;
	factor_m0 = ((reg_val >> 0) & 0x01) + 1;
	factor_m1 = ((reg_val >> 1) & 0x01) + 1;
	pll6 = (24 * factor_n /factor_m0/factor_m1)>>1;


	return pll6;
}

uint clock_get_corepll(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	unsigned int reg_val;
	int 	div_m, div_p;
	int 	factor_n;
	int 	clock,clock_src;

	reg_val   = readl(&ccm->cpu_axi_cfg);
	clock_src = (reg_val >> 24) & 0x03;

	switch(clock_src)
	{
	case 0://OSC24M
		clock = 24;
		break;
	case 1://RTC32K
		clock = 32/1000 ;
		break;
	case 2://RC16M
		clock = 16;
		break;
	case 3://PLL_CPUX
		reg_val  = readl(&ccm->pll1_cfg);
		div_p    = 1<<((reg_val >>16) & 0x3);
		factor_n = ((reg_val >> 8) & 0xff) + 1;
		div_m    = ((reg_val >> 0) & 0x3) + 1;

		clock = 24*factor_n/div_m/div_p;
		break;
	default:
		return 0;
	}
	return clock;
}


uint clock_get_axi(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	unsigned int reg_val = 0;
	int factor = 0;
	int clock = 0;

	reg_val   = readl(&ccm->cpu_axi_cfg);
	factor    = ((reg_val >> 0) & 0x03) + 1;
	clock = clock_get_corepll()/factor;

	return clock;
}


uint clock_get_ahb(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	unsigned int reg_val = 0;
	int factor_m = 0,factor_n = 0;
	int clock = 0;
	int src = 0,src_clock = 0;

	reg_val = readl(&ccm->psi_ahb1_ahb2_cfg);
	src = (reg_val >> 24)&0x3;
	factor_m  = ((reg_val >> 0) & 0x03) + 1;
	factor_n  = 1<< ((reg_val >> 8) & 0x03);

	switch(src)
	{
		case 0://OSC24M
			src_clock = 24;
			break;
		case 1://CCMU_32K
			src_clock =32/1000;
			break;
		case 2:	//RC16M
			src_clock =16;
			break;
		case 3://PLL_PERI0(1X)
			src_clock   = clock_get_pll6();
			break;
		default:
			return 0;
	}

	clock = src_clock/factor_m/factor_n;

	return clock;
}


uint clock_get_apb1(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	unsigned int reg_val = 0;
	int src = 0,src_clock = 0;
	int clock = 0, factor_m = 0,factor_n = 0;

	reg_val = readl(&ccm->apb1_cfg);
	factor_m  = ((reg_val >> 0) & 0x03) + 1;
	factor_n  = 1<<((reg_val >> 8) & 0x03);
	src = (reg_val >> 24)&0x3;

	switch(src)
	{
	case 0://OSC24M
		src_clock = 24;
		break;
	case 1://CCMU_32K
		src_clock =32/1000;
		break;
	case 2:	//PSI
		src_clock = clock_get_ahb();
		break;
	case 3://PLL_PERI0(1X)
		src_clock = clock_get_pll6();
		break;
	default:
		return 0;
	}

	clock = src_clock/factor_m/factor_n;

	return clock;
}

uint clock_get_apb2(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	unsigned int reg_val = 0;
	int clock = 0, factor_m = 0,factor_n = 0;
	int src = 0,src_clock = 0;

	reg_val = readl(&ccm->apb2_cfg);
	src = (reg_val >> 24)&0x3;
	factor_m  = ((reg_val >> 0) & 0x03) + 1;
	factor_n  = ((reg_val >> 8) & 0x03) + 1;

	switch(src)
	{
		case 0://OSC24M
			src_clock = 24;
			break;
		case 1://CCMU_32K
			src_clock =32/1000;
			break;
		case 2:	//PSI
			src_clock =clock_get_ahb();
			break;
		case 3:	//PSI
			src_clock =clock_get_pll6();
			break;
		default:
			return 0;
	}

	clock = src_clock/factor_m/factor_n;

	return clock;

}


uint clock_get_mbus(void)
{
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	unsigned int reg_val;
	unsigned int src = 0,clock=0, div = 0;
	reg_val = readl(&ccm->mbus_cfg);

	//get src
	src = (reg_val >> 24)&0x3;
	//get div M, the divided clock is divided by M+1
	div = (reg_val&0x3) + 1;

	switch(src)
	{
		case 0://src is OSC24M
			clock = 24;
			break;
		case 1://src is   pll_periph0(1x)/2
			clock = clock_get_pll6()*2;
			break;
		case 2://src is pll_ddr0  --not set in boot
			clock   = 0;
			break;
		case 3://src is pll_ddr1 --not set in boot
			clock   = 0;
			break;
	}

	clock = clock/div;

	return clock;
}



int usb_open_clock(void)
{
	u32 reg_value = 0;

	//USB0 Clock Reg

	//USB BUS Gating Reset Reg
	//USB BUS Gating Reset Reg: USB_OTG reset
	reg_value = readl(SUNXI_CCM_BASE + 0xA8C);
	reg_value |= (1 << 24)| (1 << 22);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA8C));
	__msdelay(1);

	//bit8:USB_OTG Gating
	reg_value = readl(SUNXI_CCM_BASE + 0xA8C);
	reg_value |= (1 << 8) | (1 << 6);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA8C));

	//delay to wati SIE stable
	__msdelay(1);

	//bit30: USB PHY0 reset
	//Bit29: Gating Special Clk for USB PHY0
	reg_value = readl(SUNXI_CCM_BASE + 0xA70);
	reg_value |= (1 << 29);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA70));
	udelay(50);

	reg_value = readl(SUNXI_CCM_BASE + 0xA70);
	reg_value |= (1 << 30);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA70));
	//delay some time
	__msdelay(1);

	reg_value = readl(SUNXI_CCM_BASE + 0xA78);
	reg_value |= (1 << 29);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA78));
	udelay(50);

	reg_value = readl(SUNXI_CCM_BASE + 0xA78);
	reg_value |= (1 << 30);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA78));
	//delay some time
	__msdelay(1);

	reg_value = readl(SUNXI_USBOTG_BASE + 0x420);
	reg_value |= (0x01 << 0);
	writel(reg_value, (SUNXI_USBOTG_BASE + 0x420));
	__msdelay(1);

	reg_value = readl((SUNXI_USBOTG_BASE + 0x410));
	reg_value &= ~(0x01<<3);
	reg_value |= (0x01<<5);
	writel(reg_value, (SUNXI_USBOTG_BASE + 0x410));
	udelay(50);

	reg_value = readl((SUNXI_EHCI2_BASE + 0x810));
	reg_value &= ~(0x01<<3);
	writel(reg_value, (SUNXI_EHCI2_BASE + 0x810));

	return 0;
}

int usb_close_clock(void)
{
	u32 reg_value = 0;

	/* AHB reset */
	reg_value = readl(SUNXI_CCM_BASE + 0xA8C);
	reg_value &= ~(1 << 24);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA8C));
	__msdelay(1);

	reg_value = readl(SUNXI_CCM_BASE + 0xA8C);
	reg_value &= ~(1 << 8);
	writel(reg_value, (SUNXI_CCM_BASE + 0xA8C));
	__msdelay(1);

	reg_value = readl(SUNXI_CCM_BASE + 0xA70);
	reg_value &= ~((1 << 29) | (1 << 30));
	writel(reg_value, (SUNXI_CCM_BASE + 0xA70));
	__msdelay(1);

	return 0;
}


int sunxi_set_sramc_mode(void)
{
	u32 reg_val;
	struct sunxi_ccm_reg *const ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
	/* SRAM Area C 128K Bytes Configuration by AHB ,default map to VE*/
	reg_val = readl(SUNXI_SRAMC_BASE);
	reg_val &= ~(0x7FFFFFFF);
	writel(reg_val, SUNXI_SRAMC_BASE);

	/* VE SRAM:set sram to normal mode, default boot mode */
	reg_val = readl(SUNXI_SRAMC_BASE + 0X0004);
	reg_val &= ~(0x1 << 24);
	writel(reg_val, SUNXI_SRAMC_BASE + 0X0004);

	/* VE gating&VE Bus Reset :brom set them, but not require now */
	reg_val = readl(&ccm->ve_clk_cfg);
	reg_val &= ~(0x1 << 0);
	reg_val &= ~(0x1 << 16);
	writel(reg_val, &ccm->ve_clk_cfg);

	reg_val = readl(&ccm->ve_gate_reset);
	reg_val &= ~(0x1 << 0);
	reg_val &= ~(0x1 << 16);
	writel(reg_val, &ccm->ve_gate_reset);

	/* DE gating&DE Bus Reset :brom set them, but not require now */
	reg_val = readl(&ccm->de_clk_cfg);
	reg_val &= ~(0x1 << 0);
	reg_val &= ~(0x1 << 16);
	writel(reg_val, &ccm->de_clk_cfg);

	reg_val = readl(&ccm->de_gate_reset);
	reg_val &= ~(0x1 << 0);
	reg_val &= ~(0x1 << 16);
	writel(reg_val, &ccm->de_gate_reset);

	return 0;
}

int ir_clk_cfg(void)
{
#define SUNXI_IR_GATING_REG (SUNXI_PRCM_BASE + 0x1CC)
#define SUNXI_IR_RESET_REG (SUNXI_PRCM_BASE + 0x1CC)
#define SUNXI_IR_GATING_OFFSET 0
#define SUNXI_IR_RESET_OFFSET 16
#define R_IR_RX_CLK_REG (SUNXI_PRCM_BASE + 0x1C0)
#define R_IR_SCLK_GATING_OFFSET 31
#define R_IR_CLK_SRC_OFFSET 24 /*2bit*/
#define R_IR_CLK_RATIO_N_OFFSET 8
#define R_IR_CLK_RATIO_M_OFFSET 0

	/* //reset */
	clrbits_le32(SUNXI_IR_RESET_REG, 1 << SUNXI_IR_RESET_OFFSET);

	__msdelay(1);

	setbits_le32(SUNXI_IR_RESET_REG, 1 << SUNXI_IR_RESET_OFFSET);

	/*gating*/
	clrbits_le32(SUNXI_IR_GATING_REG, 1 << SUNXI_IR_GATING_OFFSET);

	__msdelay(1);

	setbits_le32(SUNXI_IR_GATING_REG, 1 << SUNXI_IR_GATING_OFFSET);

	/* //config Special Clock for IR   (24/1/(0+1))=24MHz) */
	/* //Select 24MHz */
	clrbits_le32(R_IR_RX_CLK_REG, 0x3 << R_IR_CLK_SRC_OFFSET);
	setbits_le32(R_IR_RX_CLK_REG, 1 << R_IR_CLK_SRC_OFFSET);

	clrbits_le32(R_IR_RX_CLK_REG, 0x3 << R_IR_CLK_RATIO_N_OFFSET);/* //Divisor N = 1 */
	clrbits_le32(R_IR_RX_CLK_REG, 0x1f << R_IR_CLK_RATIO_N_OFFSET);/* //Divisor M = 0 */

	__msdelay(1);

	/* //open Clock */
	setbits_le32(R_IR_RX_CLK_REG, 1 << R_IR_SCLK_GATING_OFFSET);

	__msdelay(2);
	return 0;
}


#ifdef CONFIG_SUNXI_LIMIT_CPU_FREQ
static int fdt_set_cpu_dvfstable(u32 limit_max_freq)
{
	int ret = 0;
	uint64_t max_freq = 0;
	int  nodeoffset;	/* node offset from libfdt */
	char path_tmp[128] = {0};
	char node_name[32] = {0};
	int i;
	u32 opp_dvfs_table[] = {816000000, 1008000000, 1200000000, 1416000000};
	uchar max_flag;
	max_flag = 0;
	for (i = 0 ; i < sizeof(opp_dvfs_table)/sizeof(opp_dvfs_table[0]) ; i++) {
		sprintf(path_tmp, "/opp_l_table/opp@%d", opp_dvfs_table[i]);

		nodeoffset = fdt_path_offset (working_fdt, path_tmp);
		if (nodeoffset < 0) {
			/*
			* Not found or something else bad happened.
			*/
			debug ("can't find node \"%s\"!!!!\n", path_tmp);
			return 0;
		}
		sprintf(node_name, "opp-hz");
		ret = fdt_getprop_u64(working_fdt, nodeoffset,
					node_name, &max_freq);
		if (ret < 0) {
			pr_error("Get %s%s failed\n", path_tmp, node_name);
			return 0;
		}
		debug("max_freq:%lld\n", max_freq);
		if (max_freq >= limit_max_freq) {
			if (!max_flag) {
				max_freq = limit_max_freq;
			}
		} else {
			continue;
		}
		if (!max_flag) {
			ret = fdt_setprop_u64(working_fdt, nodeoffset, node_name,
					max_freq);
			max_flag = 1;
			if (ret < 0) {
				debug("Set %s%s failed\n", path_tmp, node_name);
				return -1;
			}
		} else {
			ret = fdt_del_node(working_fdt, nodeoffset);
			if (ret < 0) {
				debug("del %d failed\n", nodeoffset);
				return -1;
			}
		}
	}

	return 0;
}
#endif

#ifdef CONFIG_SUNXI_CHECK_LIMIT_VERIFY
int sunxi_check_cpu_gpu_verify(void)
{
	u32 chipid = 0, ret = 0;
	__maybe_unused u32 cpu_dvf = -1;

	chipid = sid_read_key(0x0) & 0xffff;
	switch (chipid) {
	case 0x5000:
	case 0x7400:
	case 0x2400:
	case 0x2c00:
	/*H616 || T507 || 0x517 || H513*/
		cpu_dvf = 1416000000;
		break;
	case 0x5c00:
	/*h313*/
		cpu_dvf = 1008000000;
		break;
	case 0x7c00:
	case 0x7d00:
	/*H503*/
		cpu_dvf = 1200000000;
		break;
	default:
		pr_force("illegal markid:%x !!!", chipid);
		sunxi_board_shutdown();
		return 0;
	}
#ifdef CONFIG_SUNXI_LIMIT_CPU_FREQ
	ret = fdt_set_cpu_dvfstable(cpu_dvf);
#endif
	return ret;
}
#endif

int sunxi_get_active_boot0_id(void)
{
	uint32_t val = *(uint32_t *)(SUNXI_RTC_BASE + 0x1A0);
	if (val & (1 << 15)) {
		return (val >> 8) & 0x7;
	} else {
		return (val >> 24) & 0x7;
	}
}
