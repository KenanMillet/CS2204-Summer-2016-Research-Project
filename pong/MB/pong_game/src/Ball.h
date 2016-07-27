#ifndef BALL_H
#define BALL_H

#include <xbasic_types.h>

class Ball
{
public:
	u32 operator()(bool, u32, bool, bool, bool, bool);
private:
	float spd, velX, velY;
	u32 posX, posY;

	u8 width, height;
};

#endif
