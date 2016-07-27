#include "Paddle.h"

u32 Paddle::operator()(bool tick, u32 delta, Player::Decision cmd, bool topColl, bool botColl, bool leftColl, bool rightColl)
{
	if(topColl)   cmd = Player::Decision( u8(cmd) & (~(u8(Player::Decision::UP)))    );
	if(botColl)   cmd = Player::Decision( u8(cmd) & (~(u8(Player::Decision::DOWN)))  );
	if(leftColl)  cmd = Player::Decision( u8(cmd) & (~(u8(Player::Decision::LEFT)))  );
	if(rightColl) cmd = Player::Decision( u8(cmd) & (~(u8(Player::Decision::RIGHT))) );

	if(!tick) return posX + (posY<<10);

	int verti, horiz;

	if(Player::Decision(u8(cmd) & u8(Player::Decision::UP)) == Player::Decision::UP) verti = -1;
	else if(Player::Decision(u8(cmd) & u8(Player::Decision::DOWN)) == Player::Decision::DOWN) verti = 1;
	else verti = 0;

	if(Player::Decision(u8(cmd) & u8(Player::Decision::LEFT)) == Player::Decision::LEFT) horiz = -1;
	else if(Player::Decision(u8(cmd) & u8(Player::Decision::RIGHT)) == Player::Decision::RIGHT) horiz = 1;
	else horiz = 0;

	posX += spd * horiz * delta;
	posY += spd * verti * delta;

	return posX + (posY<<10);
}
