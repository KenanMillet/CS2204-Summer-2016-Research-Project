#ifndef PLAYER_H
#define PLAYER_H

#include <xbasic_types.h>

class Player
{
public:
	enum class Decision : u8
	{
		NONE	=	0,
		UP		=	1 << 0,
		DOWN	=	1 << 1,
		LEFT	=	1 << 2,
		RIGHT	=	1 << 3,
		UNKNOWN	=	UP + DOWN + LEFT + RIGHT
	};

private:
	class IPC
	{
	public:
		Decision reset();
		Decision play(u8);
	};
	class BPC
	{
	public:
		Decision reset();
		Decision play(u16, u16, u16, u16);
	};

public:
	Decision operator()(bool, u8, u16, u16, u16, u16, u8);
	Player(u8 bp) : busPos(bp) {}
	const static u8 busWidth;
	const u8 busPos;
private:
	IPC ipc;
	BPC bpc;
};

#endif
