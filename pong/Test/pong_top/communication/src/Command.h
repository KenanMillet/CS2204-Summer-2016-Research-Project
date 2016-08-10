#ifndef COMMAND_H
#define COMMAND_H

#include <xbasic_types.h>

struct Command
{
	enum Radix : u8
	{
		DECIMAL = 10,
		HEX_UPPER = 16,
		HEX_LOWER = 15,
		BINARY = 2,
		OCTAL = 8,
		ASCII = 255
	};

public:
	Command(const char* = defaultString, u8 = 0, u8 = 0, Radix = ASCII, u8 = 0, Radix = ASCII, u8 = 0, Radix = ASCII, u8 = 0, Radix = ASCII,
							  	  	  u8 = 0, Radix = ASCII, u8 = 0, Radix = ASCII, u8 = 0, Radix = ASCII, u8 = 0, Radix = ASCII);

	operator bool();

	const char* tag;
	u8 pos;
	u8 argBits[8];
	Radix argRadix[8];
	static const char* defaultString;
	static const char end;

	static u8 argToInt(const char*, u8, Radix);
};


extern Command cmdEmpty;

extern Command cmdarray[128];

extern Command* getUartCmd(const char*);

extern Command* getUartCmd(u8);

#endif
