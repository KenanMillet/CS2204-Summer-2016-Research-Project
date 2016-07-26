#ifndef TICK_H
#define TICK_H

#include <xbasic_types.h>

class Tick
{
public:
u32 operator()();
private:
u32 getTime();
u32 timeStamp;
};

#endif
