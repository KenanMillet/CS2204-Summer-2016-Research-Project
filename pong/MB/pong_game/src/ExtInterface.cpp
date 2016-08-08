#include "ExtInterface.h"

const u8 ExtInterface::busWidth = 20;

u16 ExtInterface::operator()(bool reset, Player::Decision p1dec, Player::Decision p2dec, Driver::State driverIn1, Driver::State driverIn2)
{
	if(~reset)
	{
		p1decision = Player::Decision::UNKNOWN;
		p2decision = Player::Decision::UNKNOWN;
	}
	else
	{
		p1decision = p1dec;
		p2decision = p2dec;
	}
	driverState1 = interpretDriverState(driverIn1);
	driverState2 = interpretDriverState(driverIn2);
	return u16(u8(p1decision) + (u8(p2decision) << 4) + (u8(driverState1) << 8) + (u8(driverState2) << 12));
}

Driver::State ExtInterface::interpretDriverState(Driver::State state)
{
	return state;
}
