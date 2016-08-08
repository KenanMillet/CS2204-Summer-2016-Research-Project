#ifndef DRIVER_H
#define DRIVER_H

#include <xbasic_types.h>

class Driver
{
public:
	enum class State : u8
	{
		NONE	=	0,
		UP		=	1 << 0,
		DOWN	=	1 << 1,
		LEFT	=	1 << 2,
		RIGHT	=	1 << 3,
	};
public:
	Driver(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
};

#endif
