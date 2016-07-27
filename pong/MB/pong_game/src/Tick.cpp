#include "Tick.h"

#include <xbasic_types.h>

u32 Tick::operator()()
{
	u32 delta = getTime() - timeStamp;
	timeStamp += delta;
	return (delta << 1) + 1; //shifting delta 1 bit to make room for tick enable bit (which is 1)
}

u32 getTime()
{
	//no clue how to do this on a MB. It doesn't seem to be easy (might not even be possible with ISE version of MB.
	//Might make this as an external hardware module
	return 0;
}
