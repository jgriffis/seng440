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
static const char *ng0 = "C:/Users/Jared/huffman/accumulator.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0826528353_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 568U);
    t8 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t8 == 1)
        goto LAB5;

LAB6:    t7 = (unsigned char)0;

LAB7:    if (t7 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t2 = (t0 + 3076U);
    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t5 = (t0 + 3108U);
    t12 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t4, t2, t6, t5);
    t13 = (t0 + 1896);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 8U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    t7 = t10;
    goto LAB7;

}


extern void work_a_0826528353_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0826528353_3212880686_p_0};
	xsi_register_didat("work_a_0826528353_3212880686", "isim/accumulator_TB_isim_beh.exe.sim/work/a_0826528353_3212880686.didat");
	xsi_register_executes(pe);
}
