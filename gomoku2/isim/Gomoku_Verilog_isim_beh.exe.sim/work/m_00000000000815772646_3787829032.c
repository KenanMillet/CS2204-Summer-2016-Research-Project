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
static const char *ng0 = "C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku2/Gomoku_PlayCheck_V.v";
static int ng1[] = {0, 0};
static int ng2[] = {15, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {14, 0};
static unsigned int ng7[] = {0U, 0U};



static void Initial_61_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    int t30;
    char *t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    int t37;
    int t38;

LAB0:    xsi_set_current_line(61, ng0);

LAB2:    xsi_set_current_line(62, ng0);
    xsi_set_current_line(62, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:    xsi_set_current_line(71, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);
    xsi_set_current_line(63, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 2568);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 32);

LAB6:    t1 = (t0 + 2568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    xsi_set_current_line(64, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 3208);
    t16 = (t0 + 3208);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 3208);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2408);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t0 + 2568);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 2, t24, 32, 1, t27, 32, 1);
    t28 = (t14 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (!(t32));
    t34 = (t30 && t33);
    if (t34 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB6;

LAB9:    t35 = *((unsigned int *)t14);
    t36 = *((unsigned int *)t15);
    t37 = (t35 - t36);
    t38 = (t37 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t38);
    goto LAB10;

}

static void Always_74_1(char *t0)
{
    char t6[8];
    char t30[8];
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

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5192);
    *((int *)t2) = 1;
    t3 = (t0 + 4408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);

LAB5:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
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

LAB11:    xsi_set_current_line(79, ng0);

LAB14:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memcpy(t6, t3, 8);
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memcpy(t6, t3, 8);
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(75, ng0);

LAB13:    xsi_set_current_line(76, ng0);
    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    memcpy(t30, t29, 8);
    t28 = (t0 + 3048);
    xsi_vlogvar_assign_value(t28, t30, 0, 0, 32);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memcpy(t6, t3, 8);
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);
    goto LAB12;

}

static void Always_85_2(char *t0)
{
    char t6[8];
    char t32[8];
    char t33[8];
    char t50[8];
    char t51[8];
    char t59[8];
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
    char *t30;
    char *t31;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    int t95;
    int t96;
    int t97;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5208);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);

LAB5:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
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

LAB11:    xsi_set_current_line(97, ng0);

LAB50:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(86, ng0);

LAB13:    xsi_set_current_line(87, ng0);
    t28 = (t0 + 2888);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng6)));
    memset(t32, 0, 8);
    xsi_vlog_signed_greater(t32, 32, t30, 32, t31, 32);
    memset(t33, 0, 8);
    t34 = (t32 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t32);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t34) != 0)
        goto LAB16;

LAB17:    t41 = (t33 + 4);
    t42 = *((unsigned int *)t33);
    t43 = (!(t42));
    t44 = *((unsigned int *)t41);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB18;

LAB19:    memcpy(t59, t33, 8);

LAB20:    t87 = (t59 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (~(t88));
    t90 = *((unsigned int *)t59);
    t91 = (t90 & t89);
    t92 = (t91 != 0);
    if (t92 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    t7 = (t5 + 72U);
    t8 = *((char **)t7);
    t21 = (t0 + 3208);
    t22 = (t21 + 64U);
    t28 = *((char **)t22);
    t29 = (t0 + 2888);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t34 = (t0 + 3048);
    t40 = (t34 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_array_select_value(t6, 2, t4, t8, t28, 2, 2, t31, 32, 1, t41, 32, 1);
    t46 = ((char*)((ng7)));
    memset(t32, 0, 8);
    t47 = (t6 + 4);
    t48 = (t46 + 4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t46);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t47);
    t13 = *((unsigned int *)t48);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t47);
    t17 = *((unsigned int *)t48);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB35;

LAB32:    if (t18 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t32) = 1;

LAB35:    t52 = (t32 + 4);
    t23 = *((unsigned int *)t52);
    t24 = (~(t23));
    t25 = *((unsigned int *)t32);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    t7 = (t5 + 72U);
    t8 = *((char **)t7);
    t21 = (t0 + 3208);
    t22 = (t21 + 64U);
    t28 = *((char **)t22);
    t29 = (t0 + 2888);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t34 = (t0 + 3048);
    t40 = (t34 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_array_select_value(t6, 2, t4, t8, t28, 2, 2, t31, 32, 1, t41, 32, 1);
    t46 = ((char*)((ng7)));
    memset(t32, 0, 8);
    t47 = (t6 + 4);
    t48 = (t46 + 4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t46);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t47);
    t13 = *((unsigned int *)t48);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t47);
    t17 = *((unsigned int *)t48);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB43;

LAB42:    if (t18 != 0)
        goto LAB44;

LAB45:    t52 = (t32 + 4);
    t23 = *((unsigned int *)t52);
    t24 = (~(t23));
    t25 = *((unsigned int *)t32);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB46;

LAB47:
LAB48:
LAB38:
LAB30:    goto LAB12;

LAB14:    *((unsigned int *)t33) = 1;
    goto LAB17;

LAB16:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB17;

LAB18:    t46 = (t0 + 3048);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    t49 = ((char*)((ng6)));
    memset(t50, 0, 8);
    xsi_vlog_signed_greater(t50, 32, t48, 32, t49, 32);
    memset(t51, 0, 8);
    t52 = (t50 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (~(t53));
    t55 = *((unsigned int *)t50);
    t56 = (t55 & t54);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t52) != 0)
        goto LAB23;

LAB24:    t60 = *((unsigned int *)t33);
    t61 = *((unsigned int *)t51);
    t62 = (t60 | t61);
    *((unsigned int *)t59) = t62;
    t63 = (t33 + 4);
    t64 = (t51 + 4);
    t65 = (t59 + 4);
    t66 = *((unsigned int *)t63);
    t67 = *((unsigned int *)t64);
    t68 = (t66 | t67);
    *((unsigned int *)t65) = t68;
    t69 = *((unsigned int *)t65);
    t70 = (t69 != 0);
    if (t70 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB20;

LAB21:    *((unsigned int *)t51) = 1;
    goto LAB24;

LAB23:    t58 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB24;

LAB25:    t71 = *((unsigned int *)t59);
    t72 = *((unsigned int *)t65);
    *((unsigned int *)t59) = (t71 | t72);
    t73 = (t33 + 4);
    t74 = (t51 + 4);
    t75 = *((unsigned int *)t73);
    t76 = (~(t75));
    t77 = *((unsigned int *)t33);
    t78 = (t77 & t76);
    t79 = *((unsigned int *)t74);
    t80 = (~(t79));
    t81 = *((unsigned int *)t51);
    t82 = (t81 & t80);
    t83 = (~(t78));
    t84 = (~(t82));
    t85 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t85 & t83);
    t86 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t86 & t84);
    goto LAB27;

LAB28:    xsi_set_current_line(87, ng0);

LAB31:    xsi_set_current_line(88, ng0);
    t93 = ((char*)((ng1)));
    t94 = (t0 + 2728);
    xsi_vlogvar_assign_value(t94, t93, 0, 0, 32);
    goto LAB30;

LAB34:    t49 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(90, ng0);

LAB39:    xsi_set_current_line(91, ng0);
    t58 = ((char*)((ng3)));
    t63 = (t0 + 2728);
    xsi_vlogvar_assign_value(t63, t58, 0, 0, 32);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    t4 = (t0 + 3208);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3208);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 2888);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 3048);
    t34 = (t31 + 56U);
    t40 = *((char **)t34);
    xsi_vlog_generic_convert_array_indices(t6, t32, t7, t22, 2, 2, t30, 32, 1, t40, 32, 1);
    t41 = (t6 + 4);
    t9 = *((unsigned int *)t41);
    t78 = (!(t9));
    t46 = (t32 + 4);
    t10 = *((unsigned int *)t46);
    t82 = (!(t10));
    t95 = (t78 && t82);
    if (t95 == 1)
        goto LAB40;

LAB41:    goto LAB38;

LAB40:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t32);
    t96 = (t11 - t12);
    t97 = (t96 + 1);
    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t32), t97);
    goto LAB41;

LAB43:    *((unsigned int *)t32) = 1;
    goto LAB45;

LAB44:    t49 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(94, ng0);

LAB49:    xsi_set_current_line(95, ng0);
    t58 = ((char*)((ng1)));
    t63 = (t0 + 2728);
    xsi_vlogvar_assign_value(t63, t58, 0, 0, 32);
    goto LAB48;

}

static void Cont_101_3(char *t0)
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

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5304);
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
    t18 = (t0 + 5224);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000815772646_3787829032_init()
{
	static char *pe[] = {(void *)Initial_61_0,(void *)Always_74_1,(void *)Always_85_2,(void *)Cont_101_3};
	xsi_register_didat("work_m_00000000000815772646_3787829032", "isim/Gomoku_Verilog_isim_beh.exe.sim/work/m_00000000000815772646_3787829032.didat");
	xsi_register_executes(pe);
}
