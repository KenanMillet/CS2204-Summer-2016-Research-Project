#ifndef EXTINTERFACE_H
#define EXTINTERFACE_H

#include "Player.h"
#include "Driver.h"

class ExtInterface
{
public:
	u16 operator()(bool, Player::Decision, Player::Decision, Driver::State, Driver::State);
	ExtInterface(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
private:
	Driver::State interpretDriverState(Driver::State);

	Player::Decision p1decision, p2decision;
	Driver::State driverState1, driverState2;
};

#endif
