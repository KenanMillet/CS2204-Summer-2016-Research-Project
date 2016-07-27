#ifndef PADDLE_H
#define PADDLE_H

#include "Player.h"

class Paddle
{
public:
	u32 operator()(bool, u32, Player::Decision, bool, bool, bool, bool);
private:
	u16 posX, posY;
	float spd;

	u8 width, height;
};

#endif
