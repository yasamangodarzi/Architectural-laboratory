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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Asus/Downloads/AZ6/Multiplication_ShiftAndAdd/testBenchMultiplicand_8bit.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_4251139061_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4251139061_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t7 = (50 * 1000LL);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4251139061_2372691052_p_2(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int64 t15;
    unsigned char t16;
    unsigned char t17;

LAB0:    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 75;
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 164;
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2528U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 1;
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 7740);
    *((int *)t2) = 1;
    t3 = (t0 + 7744);
    *((int *)t3) = 256;
    t4 = 1;
    t5 = 256;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(105, ng0);

LAB23:    *((char **)t1) = &&LAB24;

LAB1:    return;
LAB5:    xsi_set_current_line(96, ng0);
    t7 = (t0 + 2288U);
    t8 = *((char **)t7);
    t9 = *((int *)t8);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, t9, 8);
    t10 = (t0 + 4536);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t9 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, t9, 8);
    t7 = (t0 + 4600);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t15 = (100 * 1000LL);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, t15);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 7740);
    t4 = *((int *)t2);
    t3 = (t0 + 7744);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB20:    t9 = (t4 + 1);
    t4 = t9;
    t7 = (t0 + 7740);
    *((int *)t7) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t15 = (100 * 1000LL);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, t15);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);

LAB18:    t2 = (t0 + 4328);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t3 = (t0 + 4328);
    *((int *)t3) = 0;
    goto LAB6;

LAB17:    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    if (t17 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_4251139061_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4251139061_2372691052_p_0,(void *)work_a_4251139061_2372691052_p_1,(void *)work_a_4251139061_2372691052_p_2};
	xsi_register_didat("work_a_4251139061_2372691052", "isim/testBenchMultiplicand_8bit_isim_beh.exe.sim/work/a_4251139061_2372691052.didat");
	xsi_register_executes(pe);
}
