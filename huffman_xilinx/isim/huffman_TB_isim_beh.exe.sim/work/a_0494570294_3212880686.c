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
static const char *ng0 = "C:/Users/Jared/huffman/huffman.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_1546056434;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0494570294_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    char *t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 684U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 2332);
    t4 = xsi_vhdl_lessthanEqual(t1, t2, 12U, t3, 12U);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
    t5 = (t0 + 568U);
    t6 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t5, 0U, 0U);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(78, ng0);
    t7 = ((WORK_P_1546056434) + 672U);
    t8 = *((char **)t7);
    t7 = (t0 + 1144U);
    t9 = *((char **)t7);
    t7 = (t0 + 3864U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t7);
    t11 = (t10 + 6);
    t12 = (361 - t11);
    t13 = (t0 + 1144U);
    t14 = *((char **)t13);
    t13 = (t0 + 3864U);
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t13);
    xsi_vhdl_check_range_of_slice(361, 0, -1, t11, t15, -1);
    t16 = (t12 * 1U);
    t17 = (0 + t16);
    t18 = (t8 + t17);
    t19 = (t0 + 1144U);
    t20 = *((char **)t19);
    t21 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t20, t7);
    t22 = (t21 + 6);
    t19 = (t0 + 1144U);
    t23 = *((char **)t19);
    t24 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t23, t13);
    t25 = (t24 - t22);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t27 = (1U * t26);
    t28 = (7U != t27);
    if (t28 == 1)
        goto LAB8;

LAB9:    t19 = (t0 + 2228);
    t29 = (t19 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 7U);
    xsi_driver_first_trans_fast(t19);
    goto LAB6;

LAB8:    xsi_size_not_matching(7U, t27, 0);
    goto LAB9;

}


extern void work_a_0494570294_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0494570294_3212880686_p_0};
	xsi_register_didat("work_a_0494570294_3212880686", "isim/huffman_TB_isim_beh.exe.sim/work/a_0494570294_3212880686.didat");
	xsi_register_executes(pe);
}
