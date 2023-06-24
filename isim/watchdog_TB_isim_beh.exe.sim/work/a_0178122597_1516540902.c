/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/simone/progetto reti logiche/WindowedWatchdogCounter/prescaler.vhd";



static void work_a_0178122597_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    char *t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned char t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 3144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 6211);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB16:    t6 = (t0 + 6215);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB17:    t9 = (t0 + 6219);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB18:    t12 = (t0 + 6223);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB19:    t15 = (t0 + 6227);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB20:    t18 = (t0 + 6231);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB21:    t21 = (t0 + 6235);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB22:    t24 = (t0 + 6239);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB23:    t27 = (t0 + 6243);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB24:    t30 = (t0 + 6247);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB25:
LAB15:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (10 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(40, ng0);

LAB29:    t2 = (t0 + 3712);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;

LAB1:    return;
LAB5:    xsi_set_current_line(42, ng0);
    t33 = (t0 + 1672U);
    t34 = *((char **)t33);
    t35 = (0 - 10);
    t36 = (t35 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t33 = (t34 + t38);
    t39 = *((unsigned char *)t33);
    t40 = (t0 + 3808);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    *((unsigned char *)t44) = t39;
    xsi_driver_first_trans_fast(t40);
    goto LAB4;

LAB6:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (1 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (2 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (3 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (4 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (5 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (6 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (7 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (8 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t5 = (9 - 10);
    t36 = (t5 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t2 = (t3 + t38);
    t39 = *((unsigned char *)t2);
    t4 = (t0 + 3808);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t39;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB26:;
LAB27:    t3 = (t0 + 3712);
    *((int *)t3) = 0;
    goto LAB2;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

}

static void work_a_0178122597_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3728);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0178122597_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0178122597_1516540902_p_0,(void *)work_a_0178122597_1516540902_p_1};
	xsi_register_didat("work_a_0178122597_1516540902", "isim/watchdog_TB_isim_beh.exe.sim/work/a_0178122597_1516540902.didat");
	xsi_register_executes(pe);
}
