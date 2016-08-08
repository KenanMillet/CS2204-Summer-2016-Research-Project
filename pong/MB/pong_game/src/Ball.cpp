#include "Ball.h"

const u8 Ball::busWidth = 20;

u32 Ball::operator()(bool tick, u32 delta, bool topColl, bool botColl, bool leftColl, bool rightColl)
{
	if(topColl || botColl) velY *= -1;
	if(leftColl || rightColl) velX *= -1;

	if(!tick) return posX + (posY << 10);

	posX += velX * spd * delta;
	posY += velY * spd * delta;

	return posX + (posY << 10);
}
