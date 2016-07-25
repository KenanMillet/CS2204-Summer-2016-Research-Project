#include "Player.h"

Player::Decision Player::operator()(bool reset, u8 ctrlSel, u16 ballPosX, u16 ballPosY, u16 paddlePosX, u16 paddlePosY, u8 extIn)
{
	if(reset)
	{
		ipc.reset();
		bpc.reset();
		return Decision::UNKNOWN;
	}
	if(!ctrlSel)
	{
		return Decision::UNKNOWN;
	}
	if(ctrlSel == 1)
	{
		bpc.play(ballPosX, ballPosY, paddlePosX, paddlePosY);
		return ipc.play(extIn);
	}
	if(ctrlSel == 2)
	{
		ipc.play(extIn);
		return bpc.play(ballPosX, ballPosY, paddlePosX, paddlePosY);
	}
	return Decision::UNKNOWN;
}

Player::Decision Player::IPC::play(u8 extIn)
{
	return Decision(extIn);
}

Player::Decision Player::IPC::reset()
{
	return Decision::UNKNOWN;
}

Player::Decision Player::BPC::play(u16 ballPosX, u16 ballPosY, u16 paddlePosX, u16 paddlePosY)
{
	if(ballPosX > paddlePosX) return Decision::RIGHT;
	if(ballPosX < paddlePosX) return Decision::LEFT;
	return Decision::NONE;
}
Player::Decision Player::BPC::reset()
{
	return Decision::UNKNOWN;
}
