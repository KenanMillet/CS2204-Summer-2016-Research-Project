COMPILER=mb-g++
ARCHIVER=mb-ar
CP=cp
COMPILER_FLAGS= -mlittle-endian
EXTRA_COMPILER_FLAGS= -c -std=c++0x
LIB=libblazeio.a
LEVEL=0

RELEASEDIR=../../../lib
INCLUDEDIR=../../../include
INCLUDES=-I./. -I$(INCDEPENDENCY) -I${INCLUDEDIR}
LINK=-L$(LIBDEPENDENCY)

INCLUDEFILES=*.h
LIBSOURCES=*.cpp

OUTS = *.o 

libs: include
	echo "Compiling usb"
	$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES) $(LINK)
	@$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OUTS} 
	make clean

include: 
	${CP} $(INCLUDEFILES) $(INCLUDEDIR)

clean:
	rm -rf ${OUTS}
