#ifndef TICK_H
#define TICK_H

#include <xbasic_types.h>

class Tick
{
public:
	u32 operator()();
	Tick(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
private:
	u32 getTime();
	u32 timeStamp;
};

#endif
