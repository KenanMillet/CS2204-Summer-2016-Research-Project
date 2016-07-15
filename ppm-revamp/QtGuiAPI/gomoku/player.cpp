#include "player.h"
#include "delay.h"

Player::Player(QObject *parent) : QObject(parent), myturn(false), turnends(false), currenttile(nullptr), playcheck(new Playcheck), stop(false){}

bool Player::playthere(Tile* t){
    if(playcheck->validation(*t)){
        if(Tile::turn == true){
            delay(50);
            t->setPixmap(QPixmap(":/Images/bishop_black.svg"));
            t->piece=1;
        }
        else{
             delay(50);
            t->setPixmap(QPixmap(":/Images/bishop_white.svg"));
            t->piece=2;
        }
        return true;
    }
    else return false;
}



