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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Jared/huffman/lookup.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2542269371_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(169, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * 1U);
    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t1 = (t0 + 3196U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t6);
    t9 = (8U * t8);
    t10 = (0 + t9);
    t11 = (t10 + t4);
    t12 = (t2 + t11);
    t13 = (t0 + 1836);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(170, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t3 = (7 - 3);
    t4 = (t3 * 1U);
    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t1 = (t0 + 3196U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t6);
    t9 = (8U * t8);
    t10 = (0 + t9);
    t11 = (t10 + t4);
    t12 = (t2 + t11);
    t13 = (t0 + 1872);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 4U);
    xsi_driver_first_trans_fast_port(t13);
    t1 = (t0 + 1792);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_2542269371_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2542269371_3212880686_p_0};
	xsi_register_didat("work_a_2542269371_3212880686", "isim/lookup_isim_beh.exe.sim/work/a_2542269371_3212880686.didat");
	xsi_register_executes(pe);
}
