#include "Command.h"
#include "math.h"

const char* Command::defaultString = "";
const char Command::end = ';';

Command::Command(const char* name, u8 bitPos, u8 arg0Bits, Radix arg0Radix, u8 arg1Bits, Radix arg1Radix, u8 arg2Bits, Radix arg2Radix, u8 arg3Bits, Radix arg3Radix,
											  u8 arg4Bits, Radix arg4Radix, u8 arg5Bits, Radix arg5Radix, u8 arg6Bits, Radix arg6Radix, u8 arg7Bits, Radix arg7Radix)
	: tag(name), pos(bitPos)
{
	argBits[0] = arg0Bits;
	argBits[1] = arg1Bits;
	argBits[2] = arg2Bits;
	argBits[3] = arg3Bits;
	argBits[4] = arg4Bits;
	argBits[5] = arg5Bits;
	argBits[6] = arg6Bits;
	argBits[7] = arg7Bits;

	argRadix[0] = arg0Radix;
	argRadix[1] = arg1Radix;
	argRadix[2] = arg2Radix;
	argRadix[3] = arg3Radix;
	argRadix[4] = arg4Radix;
	argRadix[5] = arg5Radix;
	argRadix[6] = arg6Radix;
	argRadix[7] = arg7Radix;
}

Command::operator bool()
{
	return (tag != defaultString);
}

u8 Command::argToInt(const char* arg, u8 argLength, Radix rad)
{
	u8 radix;
	u8 result = 0;

	char digit;

	if(argLength == 0) return 0;
	if(rad == ASCII) return arg[0];

	if(rad == HEX_LOWER) radix = 16;
	else radix = u8(rad);

	for(int i = argLength-1; i > -1; --i)
	{
		digit = arg[i];
		if(rad == HEX_LOWER && digit >= 'a') digit -= ('a' - 10);
		else if(rad == HEX_UPPER && digit >= 'A') digit -= ('A' - 10);
		else digit -= '0';
		result += digit * pow(radix, i);
	}
	return result;
}

Command cmdEmpty;

Command cmdarray[128] = {

};

Command* getUartCmd(const char* tagName)
{
	Command* result = &cmdEmpty;
	for(u8 i = 0; i < 128; ++i)
	{
		if(cmdarray[i].tag == tagName || !(cmdarray[i]))
		{
			result = &(cmdarray[i]);
			break;
		}
	}
	return result;
}

Command* getUartCmd(u8 pos)
{
	Command* result = &cmdEmpty;
	for(u8 i = 0; i < 128; ++i)
	{
		if(cmdarray[i].pos == pos)
		{
			result = &(cmdarray[i]);
			break;
		}
	}
	return result;
}
