;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Default exception handler.
;; Catches any unhandled exceptions.
;;
;; Copyright 2009 IAR Systems. All rights reserved.
;;
;; $Revision: 47408 $
;;

        MODULE  ?vectortrap



        PUBWEAK Undefined_Handler
        PUBWEAK SWI_Handler
        PUBWEAK Prefetch_Handler
        PUBWEAK Abort_Handler
        PUBWEAK IRQ_Handler
        PUBWEAK FIQ_Handler


        SECTION .text:CODE:NOROOT:REORDER(2)
        ARM

        CALL_GRAPH_ROOT __default_handler, "interrupt"
        NOCALL __default_handler

Undefined_Handler:
SWI_Handler:
Prefetch_Handler:
Abort_Handler:
IRQ_Handler:
FIQ_Handler:
__default_handler:
        B .


        END
