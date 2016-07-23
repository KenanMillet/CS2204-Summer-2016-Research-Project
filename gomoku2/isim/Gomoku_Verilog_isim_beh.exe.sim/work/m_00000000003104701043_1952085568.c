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
static const char *ng0 = "C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku2/Gomoku_MachinePlayer_V.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {14, 0};



static void Initial_49_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(49, ng0);

LAB2:    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_55_1(char *t0)
{
    char t6[8];
    char t28[8];
    char t29[8];
    char t34[8];
    char t70[8];
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
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t71;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4640);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
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

LAB11:    xsi_set_current_line(61, ng0);

LAB48:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(56, ng0);

LAB13:    xsi_set_current_line(57, ng0);
    t30 = (t0 + 2088);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng4)));
    memset(t34, 0, 8);
    t35 = (t32 + 4);
    t36 = (t33 + 4);
    t37 = *((unsigned int *)t32);
    t38 = *((unsigned int *)t33);
    t39 = (t37 ^ t38);
    t40 = *((unsigned int *)t35);
    t41 = *((unsigned int *)t36);
    t42 = (t40 ^ t41);
    t43 = (t39 | t42);
    t44 = *((unsigned int *)t35);
    t45 = *((unsigned int *)t36);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB17;

LAB14:    if (t46 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t34) = 1;

LAB17:    memset(t29, 0, 8);
    t50 = (t34 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (~(t51));
    t53 = *((unsigned int *)t34);
    t54 = (t53 & t52);
    t55 = (t54 & 1U);
    if (t55 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t50) != 0)
        goto LAB20;

LAB21:    t57 = (t29 + 4);
    t58 = *((unsigned int *)t29);
    t59 = *((unsigned int *)t57);
    t60 = (t58 || t59);
    if (t60 > 0)
        goto LAB22;

LAB23:    t62 = *((unsigned int *)t29);
    t63 = (~(t62));
    t64 = *((unsigned int *)t57);
    t65 = (t63 || t64);
    if (t65 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t57) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t29) > 0)
        goto LAB28;

LAB29:    memcpy(t28, t70, 8);

LAB30:    t71 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t71, t28, 0, 0, 4, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t29, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t29) = 1;

LAB34:    memset(t28, 0, 8);
    t22 = (t29 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t29);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t22) != 0)
        goto LAB37;

LAB38:    t31 = (t28 + 4);
    t37 = *((unsigned int *)t28);
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB39;

LAB40:    t40 = *((unsigned int *)t28);
    t41 = (~(t40));
    t42 = *((unsigned int *)t31);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t31) > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t28) > 0)
        goto LAB45;

LAB46:    memcpy(t6, t70, 8);

LAB47:    t57 = (t0 + 2248);
    xsi_vlogvar_assign_value(t57, t6, 0, 0, 4);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    t49 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB17;

LAB18:    *((unsigned int *)t29) = 1;
    goto LAB21;

LAB20:    t56 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB21;

LAB22:    t61 = ((char*)((ng2)));
    goto LAB23;

LAB24:    t66 = (t0 + 2088);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = ((char*)((ng3)));
    memset(t70, 0, 8);
    xsi_vlog_unsigned_add(t70, 32, t68, 4, t69, 32);
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t28, 32, t61, 32, t70, 32);
    goto LAB30;

LAB28:    memcpy(t28, t61, 8);
    goto LAB30;

LAB33:    t21 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t28) = 1;
    goto LAB38;

LAB37:    t30 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB38;

LAB39:    t32 = (t0 + 2248);
    t33 = (t32 + 56U);
    t35 = *((char **)t33);
    t36 = ((char*)((ng3)));
    memset(t34, 0, 8);
    xsi_vlog_unsigned_add(t34, 32, t35, 4, t36, 32);
    goto LAB40;

LAB41:    t49 = (t0 + 2248);
    t50 = (t49 + 56U);
    t56 = *((char **)t50);
    memcpy(t70, t56, 8);
    goto LAB42;

LAB43:    xsi_vlog_unsigned_bit_combine(t6, 32, t34, 32, t70, 32);
    goto LAB47;

LAB45:    memcpy(t6, t34, 8);
    goto LAB47;

}

static void Cont_66_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4768);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 4656);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_67_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4832);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 4672);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_68_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 4688);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003104701043_1952085568_init()
{
	static char *pe[] = {(void *)Initial_49_0,(void *)Always_55_1,(void *)Cont_66_2,(void *)Cont_67_3,(void *)Cont_68_4};
	xsi_register_didat("work_m_00000000003104701043_1952085568", "isim/Gomoku_Verilog_isim_beh.exe.sim/work/m_00000000003104701043_1952085568.didat");
	xsi_register_executes(pe);
}
