#ifndef BALL_H
#define BALL_H

#include <xbasic_types.h>

class Ball
{
public:
	u32 operator()(bool, u32, bool, bool, bool, bool);
	Ball(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
private:
	float spd, velX, velY;
	u32 posX, posY;

	u8 width, height;
};

#endif
