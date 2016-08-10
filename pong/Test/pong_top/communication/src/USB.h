#ifndef USB_H
#define USB_H

#include <xbasic_types.h>

class USB
{
public:
	u32 poll();
	void send(u32);
};

#endif
