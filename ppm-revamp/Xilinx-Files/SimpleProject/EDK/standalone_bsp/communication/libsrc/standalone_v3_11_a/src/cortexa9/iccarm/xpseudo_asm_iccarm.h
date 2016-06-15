/******************************************************************************
*
* (c) Copyright 2009-13  Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xpseudo_asm_iccarm.h
*
* This header file contains macros for using inline assembler code. It is
* written specifically for the IAR C/C++ compiler.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who      Date     Changes
* ----- -------- -------- -----------------------------------------------
* 1.00a ecm/sdm  10/28/09 First release
* </pre>
*
******************************************************************************/

#ifndef XPSEUDO_ASM_ICCARM_H  /* prevent circular inclusions */
#define XPSEUDO_ASM_ICCARM_H  /* by using protection macros */

/***************************** Include Files ********************************/

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/************************** Constant Definitions ****************************/

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/* necessary for pre-processor */
#define stringify(s)	tostring(s)
#define tostring(s)	#s

/* pseudo assembler instructions */
/* #define mfcpsr()	({unsigned int rval; \
			  __asm volatile(\
			    "mrs	%0, cpsr\n"\
			    : "=r" (rval)\
			  );\
			  rval;\
			 }) */
#define mfcpsr(v)  __asm volatile("mrs %0, cpsr": "=r" (v)); 
			 
#define mtcpsr(v)	__asm volatile(\
			  "msr	cpsr,%0\n"\
			  : : "r" (v)\
			)

#define cpsiei()	__asm volatile("cpsie	i\n")
#define cpsidi()	__asm volatile("cpsid	i\n")

#define cpsief()	__asm volatile("cpsie	f\n")
#define cpsidf()	__asm volatile("cpsid	f\n")



#define mtgpr(rn, v)	__asm volatile(\
			  "mov r" stringify(rn) ", %0 \n"\
			  : : "r" (v)\
			)

#define mfgpr(rn)	({unsigned int rval; \
			  __asm volatile(\
			    "mov %0,r" stringify(rn) "\n"\
			    : "=r" (rval)\
			  );\
			  rval;\
			 })

/* memory synchronization operations */

/* Instruction Synchronization Barrier */
#define isb() __asm volatile ("isb" : : : "memory")

/* Data Synchronization Barrier */
#define dsb() __asm volatile ("dsb" : : : "memory")

/* Data Memory Barrier */
#define dmb() __asm volatile ("dmb" : : : "memory")


/* Memory Operations */
#define ldr(adr)	({unsigned long rval; \
			  __asm volatile(\
			    "ldr	%0,[%1]"\
			    : "=r" (rval) : "r" (adr)\
			  );\
			  rval;\
			 })

#define ldrb(adr)	({unsigned char rval; \
			  __asm volatile(\
			    "ldrb	%0,[%1]"\
			    : "=r" (rval) : "r" (adr)\
			  );\
			  rval;\
			 })

#define str(adr, val)	__asm volatile(\
			  "str	%0,[%1]\n"\
			  : : "r" (val), "r" (adr)\
			)

#define strb(adr, val)	__asm volatile(\
			  "strb	%0,[%1]\n"\
			  : : "r" (val), "r" (adr)\
			)

/* Count leading zeroes (clz) */
#define clz(arg)	({unsigned char rval; \
			  __asm volatile(\
			    "clz	%0,%1"\
			    : "=r" (rval) : "r" (arg)\
			  );\
			  rval;\
			 })

/* CP15 operations */
#define mtcp(rn, v)	__asm volatile(\
			 "mcr " rn "\n"\
			 : : "r" (v)\
			);

/*#define mfcp(rn)	({unsigned int rval; \
			 __asm volatile(\
			   "mrc " rn "\n"\
			   : "=r" (rval)\
			 );\
			 rval;\
			 }) */

#define mfcp(rn, v)	__asm volatile ("mrc " rn : "=r" (v));
                           
/************************** Variable Definitions ****************************/

/************************** Function Prototypes *****************************/

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* XPSEUDO_ASM_ICCARM_H */
