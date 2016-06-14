######################################################################
# Copyright (c) 2011 Xilinx, Inc.  All rights reserved. 
# 
# Xilinx, Inc. 
# XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
# COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS 
# ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
# STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
# IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
# FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION. 
# XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
# THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
# ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
# FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
# AND FITNESS FOR A PARTICULAR PURPOSE. 
######################################################################

include config.make

AS=iasmarm
COMPILER=iccarm
ARCHIVER=iarchive
CP=cp
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=

LIB=libxil.a

CC_FLAGS = $(COMPILER_FLAGS)
ECC_FLAGS = $(EXTRA_COMPILER_FLAGS)

ECC_FLAGS	+= --cpu=Cortex-A9 --fpu=VFPv3_d16

RELEASEDIR=../../../lib
INCLUDEDIR=../../../include

INCLUDES=-I./. -I${INCLUDEDIR}

INCLUDEFILES=*.h

OBJECTS =	$(addsuffix .o, $(basename $(wildcard *.c)))
OBJECTS +=	$(addsuffix .o, $(basename $(wildcard *.s)))
#OBJECTS +=	boot.o

libs: banner $(LIBS) clean

#boot.s: boot.S
#	${COMPILER} $(INCLUDES) -E -o $@ $<
#	rm -f boot.S

%.o: %.s
	${AS} --cpu Cortex-A9 --fpu VFPv3_d16 $(INCLUDES) -o $@ $<

%.o: %.c
	${COMPILER} $(CC_FLAGS) $(ECC_FLAGS) $(INCLUDES) -o $@ $<

banner:
	echo "Compiling standalone"
	echo "${COMPILER} $(CC_FLAGS) $(ECC_FLAGS) $(INCLUDES) -o $@ $<"

standalone_libs: ${OBJECTS}
	$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OBJECTS}

.PHONY: include
include: standalone_includes

standalone_includes:
	${CP} ${INCLUDEFILES} ${INCLUDEDIR}

clean:
	rm -rf ${OBJECTS}
