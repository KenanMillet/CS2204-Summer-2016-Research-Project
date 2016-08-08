#ifndef CONTROL_H
#define CONTROL_H

#include "Player.h"

class Control
{
public:
	u8 operator()(bool, bool, bool, bool, Player::Decision, Player::Decision);
	Control(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
private:
	u8 state;
};

#endif
