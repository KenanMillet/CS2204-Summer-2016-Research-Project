/**************************************************
 *
 * Functions for turning on core features assumed to be enabled.
 *
 * Copyright 2009 IAR Systems. All rights reserved.
 *
 * $Revision: 46842 $
 *
 **************************************************/

        module ?coreinit

        PUBLIC __iar_init_core_v6

        SECTION .text:CODE:NOROOT(2)

        ARM
        ;; For ARMv6 unaligned memory access needs to be actively enabled.
__iar_init_core_v6:
          NOCALL __iar_init_core_v6
        MRC     p15, #0, r0, c1, c0, #0         ; Copy SCTLR.
        ORR     r0, r0, #0x00400000             ; Set U-bit in copy.
        MCR     p15, #0, r0, c1, c0, #0         ; Write copy to SCTLR.
        BX      lr

        END
