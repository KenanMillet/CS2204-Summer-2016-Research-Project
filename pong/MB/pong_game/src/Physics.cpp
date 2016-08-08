#include "Physics.h"

const u8 Physics::busWidth = 20;

u8 Physics::operator()(u16 aTop, u16 aBot, u16 aLeft, u16 aRight, u16 bTop, u16 bBot, u16 bLeft, u16 bRight)
{
	u8 horizCollA = 0;
	u8 vertiCollA = 0;
	u8 horizCollB = 0;
	u8 vertiCollB = 0;

	if(aTop <= bBot && aBot >= bTop)
	{
		vertiCollA = 1;
		vertiCollB = 2;
	}
	else if(bTop <= aBot && bBot >= aTop)
	{
		vertiCollB = 1;
		vertiCollA = 2;
	}

	if(aLeft <= bRight && aRight >= bLeft)
	{
		horizCollA = 1;
		horizCollB = 2;
	}
	else if(bLeft <= aRight && bRight >= aLeft)
	{
		horizCollB = 1;
		horizCollA = 2;
	}

	return (horizCollA + (vertiCollA<<2)) + ((horizCollB + (vertiCollB<<2)) << 4);
}
