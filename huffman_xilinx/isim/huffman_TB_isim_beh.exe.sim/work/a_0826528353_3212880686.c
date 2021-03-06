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
    char t7[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 868U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 960U);
    t3 = *((char **)t1);
    t1 = (t0 + 1896);
    t4 = (t1 + 32U);
    t8 = *((char **)t4);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 12U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 684U);
    t8 = *((char **)t3);
    t3 = (t0 + 3076U);
    t9 = (t0 + 960U);
    t10 = *((char **)t9);
    t9 = (t0 + 3108U);
    t11 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t7, t8, t3, t10, t9);
    t12 = (t0 + 1860);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t11, 12U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

}


extern void work_a_0826528353_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0826528353_3212880686_p_0};
	xsi_register_didat("work_a_0826528353_3212880686", "isim/huffman_TB_isim_beh.exe.sim/work/a_0826528353_3212880686.didat");
	xsi_register_executes(pe);
}
