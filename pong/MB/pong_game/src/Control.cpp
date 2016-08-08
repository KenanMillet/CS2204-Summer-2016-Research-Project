#include "Control.h"

const u8 Control::busWidth = 20;

u8 Control::operator()(bool start, bool reset, bool win, bool scored, Player::Decision p1Decision, Player::Decision p2Decision)
{
	u8 tickEn = 0;
	u8 extIntReset = 1;
	u8 tickReset = 1;
	u8 playerReset = 1;
	u8 ballPosReset = 1;

	if(~reset || win || scored) state = 0;

	switch(state)
	{
		case 0:
			tickReset = 0;
			ballPosReset = 0;
			playerReset = 0;
			extIntReset = 0;
			if(start)state = 1;
			break;
		case 1:
			if(p1Decision != Player::Decision::UNKNOWN && p2Decision != Player::Decision::UNKNOWN)
			{
				tickEn = 1;
				state = 2;
			}
			break;
		case 2:
			state = 1;
			break;
	}
	return playerReset + (tickReset << 1) + (ballPosReset << 2) + (tickEn << 3) + (extIntReset << 4);
}
