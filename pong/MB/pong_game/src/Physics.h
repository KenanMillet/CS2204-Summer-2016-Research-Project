#ifndef PHYSICS_H
#define PHYSICS_H

#include <xbasic_types.h>

class Physics
{
public:
	u8 operator()(u16, u16, u16, u16, u16, u16, u16, u16);
	Physics(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
};

#endif
