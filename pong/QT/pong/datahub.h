#ifndef DATAHUB_H
#define DATAHUB_H
#include "controlunit.h"
#include "player.h"
#include "physics.h"
#include "extinterface.h"
#include "ball.h"
#include "paddle.h"
#include "tick.h"


class DataHub{
public:
    ControlUnit* CU;
    ball* theball;
    paddle* P1paddle;
    paddle* P2paddle;
    Player* P1;
    Player* P2;
    ExtInterface* interface;
    physics* thephysics;
    tick* thetick;
    void associate(ControlUnit* mod) {if(CU != nullptr) CU->dh = nullptr; CU = mod; if(mod != nullptr)CU->dh = this;}
    void associate(ball* mod) {if(theball != nullptr) theball->dh = nullptr; theball = mod; if(mod != nullptr)theball->dh = this;}
    void associate(paddle* mod, int player) {if(player==1){if(P1paddle != nullptr) P1paddle->dh = nullptr; P1paddle = mod; if(mod != nullptr)P1paddle->dh = this;}
                                            if(player==2){if(P2paddle != nullptr) P2paddle->dh = nullptr; P2paddle = mod; if(mod != nullptr)P2paddle->dh = this;}}
    void associate(ExtInterface* mod) {if(interface != nullptr) interface->dh = nullptr; interface = mod; if(mod != nullptr)interface->dh = this;}


    void associate(Player* mod, int player)  {if(player==1){if(P1 != nullptr) P1->dh = nullptr; P1 = mod; if(mod != nullptr)P1->dh = this;}
                                            if(player==2){if(P2 != nullptr) P2->dh = nullptr; P2 = mod; if(mod != nullptr)P2->dh = this;}}



    void associate(physics* mod) {if(thephysics != nullptr) thephysics ->dh = nullptr; thephysics  = mod; if(mod != nullptr)thephysics ->dh = this;}
    void associate(tick* mod) {if(thetick != nullptr) thetick->dh = nullptr; thetick = mod; if(mod != nullptr)thetick->dh = this;}




};





#endif // DATAHUB_H

