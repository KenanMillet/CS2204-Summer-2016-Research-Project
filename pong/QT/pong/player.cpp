#include "player.h"
#include "datahub.h"
#include "QDebug"


Decision Player::operator ()(bool reset, Controller sel, QPointF ballPos, QPointF paddlePos, char extIn){
    //logic level low, 0 is true, 1 is false
   if(!reset){
       ipc.reset();
       bpc.reset();
       return UNKNOWN;
   }
   if(sel==0){
       return UNKNOWN;
   }
   if(sel==SEL_IPC){
       bpc.play(ballPos, paddlePos);
       return ipc.play(extIn);
   }
   if(sel==SEL_BPC){
       ipc.play(extIn);
       return bpc.play(ballPos, paddlePos);
   }
   return UNKNOWN;
}

QDebug operator<<(QDebug q, const Decision& d){

    if((char(d) >> 4) != 0) q << "INVALID";
    else if(Decision(char(d) & char(UNKNOWN)) == UNKNOWN) q << "UNKNOWN";
    else
    {
        if(d == NONE)  q << "NONE";
        if(Decision(char(d) & char(UP)) == UP)  q << "UP";
        if(Decision(char(d) & char(DOWN)) == DOWN)  q << "DOWN";
        if(Decision(char(d) & char(LEFT)) == LEFT)  q << "LEFT";
        if(Decision(char(d) & char(RIGHT)) == RIGHT)  q << "RIGHT";
    }
    return q;


//    if(d==UNKNOWN) q << "UNKNOWN";
//    else if(d==NONE) q << "NONE";
//    else if(d==UP) q << "UP";
//    else if(d==DOWN) q << "DOWN";
//    else if(d==LEFT) q << "LEFT";
//    else if(d==RIGHT) q << "RIGHT";
//    else if(d==(LEFT | UP)) q << "UP-LEFT";
//    else if(d==(LEFT | DOWN)) q << "DOWN-LEFT";
//    else if(d==(RIGHT | UP)) q << "UP-RIGHT";
//    else if(d==(RIGHT | DOWN)) q << "DOWN-RIGHT";
//    else q << "INVALID";
//    return q;
}




Decision Player::IPC::play(char extIn){
    return Decision(extIn);
}


void Player::IPC::reset(){
}



void Player::BPC::reset(){
}




Decision Player::BPC::play(QPointF ballPos, QPointF paddlePos){
    if(ballPos.x() > paddlePos.x())   return RIGHT;
    if(ballPos.x() < paddlePos.x())   return LEFT;
    return NONE;
}




void Player::reset(){
    ipc.reset();
    bpc.reset();
}
