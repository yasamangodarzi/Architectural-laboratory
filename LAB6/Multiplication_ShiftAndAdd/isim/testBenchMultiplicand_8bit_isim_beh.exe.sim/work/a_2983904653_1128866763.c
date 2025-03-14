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
static const char *ng0 = "C:/Users/Asus/Downloads/AZ6/Multiplication_ShiftAndAdd/ripple_carry_adder_new.vhd";



static void work_a_2983904653_1128866763_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 8400);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 7U, 1, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2983904653_1128866763_init()
{
	static char *pe[] = {(void *)work_a_2983904653_1128866763_p_0};
	xsi_register_didat("work_a_2983904653_1128866763", "isim/testBenchMultiplicand_8bit_isim_beh.exe.sim/work/a_2983904653_1128866763.didat");
	xsi_register_executes(pe);
}
