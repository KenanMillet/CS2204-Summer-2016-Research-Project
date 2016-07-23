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
static const char *ng0 = "C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku2/Gomoku_ControlUnit_V.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};



static void Initial_99_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(99, ng0);

LAB2:    xsi_set_current_line(100, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 3, 0LL);
    xsi_set_current_line(101, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(102, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(103, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(104, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 2, 0LL);
    xsi_set_current_line(105, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3728);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Always_108_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 5216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5536);
    *((int *)t2) = 1;
    t3 = (t0 + 5248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);

LAB5:    xsi_set_current_line(109, ng0);
    t4 = (t0 + 2528U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1888U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(109, ng0);

LAB13:    xsi_set_current_line(110, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 3, 0LL);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(112, ng0);

LAB21:    xsi_set_current_line(113, ng0);
    t21 = (t0 + 4048);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);

LAB22:    t29 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t29, 3);
    if (t30 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB20;

LAB23:    xsi_set_current_line(164, ng0);

LAB34:    xsi_set_current_line(165, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 3728);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 1);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 2688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB35;

LAB36:
LAB37:    goto LAB33;

LAB25:    xsi_set_current_line(174, ng0);

LAB39:    xsi_set_current_line(175, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(178, ng0);
    t2 = (t0 + 2048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB43;

LAB40:    if (t18 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t6) = 1;

LAB43:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB44;

LAB45:
LAB46:    goto LAB33;

LAB27:    xsi_set_current_line(184, ng0);

LAB48:    xsi_set_current_line(185, ng0);
    t3 = (t0 + 2848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t3);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB52;

LAB49:    if (t18 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t6) = 1;

LAB52:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(188, ng0);

LAB57:    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB55:    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB33;

LAB29:    xsi_set_current_line(195, ng0);

LAB58:    xsi_set_current_line(196, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3568);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 2208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB62;

LAB59:    if (t18 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t6) = 1;

LAB62:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB63;

LAB64:
LAB65:    goto LAB33;

LAB31:    xsi_set_current_line(205, ng0);

LAB67:    xsi_set_current_line(206, ng0);
    t3 = (t0 + 2848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t3);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB71;

LAB68:    if (t18 != 0)
        goto LAB70;

LAB69:    *((unsigned int *)t6) = 1;

LAB71:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB72;

LAB73:    xsi_set_current_line(210, ng0);

LAB76:    xsi_set_current_line(211, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB74:    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB33;

LAB35:    xsi_set_current_line(169, ng0);

LAB38:    xsi_set_current_line(170, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB37;

LAB42:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(178, ng0);

LAB47:    xsi_set_current_line(179, ng0);
    t21 = ((char*)((ng2)));
    t22 = (t0 + 3248);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 1);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB46;

LAB51:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(185, ng0);

LAB56:    xsi_set_current_line(186, ng0);
    t22 = ((char*)((ng4)));
    t29 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t29, t22, 0, 0, 3, 0LL);
    goto LAB55;

LAB61:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(199, ng0);

LAB66:    xsi_set_current_line(200, ng0);
    t21 = ((char*)((ng2)));
    t22 = (t0 + 3248);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 1);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB65;

LAB70:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB71;

LAB72:    xsi_set_current_line(206, ng0);

LAB75:    xsi_set_current_line(207, ng0);
    t22 = ((char*)((ng2)));
    t29 = (t0 + 3728);
    xsi_vlogvar_assign_value(t29, t22, 0, 0, 1);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB74;

}


extern void work_m_00000000003037421704_4112152428_init()
{
	static char *pe[] = {(void *)Initial_99_0,(void *)Always_108_1};
	xsi_register_didat("work_m_00000000003037421704_4112152428", "isim/Gomoku_Verilog_isim_beh.exe.sim/work/m_00000000003037421704_4112152428.didat");
	xsi_register_executes(pe);
}
