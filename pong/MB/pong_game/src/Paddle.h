#ifndef PADDLE_H
#define PADDLE_H

#include "Player.h"

class Paddle
{
public:
	u32 operator()(bool, u32, Player::Decision, bool, bool, bool, bool);
	Paddle(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
private:
	u16 posX, posY;
	float spd;

	u8 width, height;
};

#endif
