                                                                                                                                                                                                                                                                                         #include "extinterface.h"
#include "ball.h"
#include "paddle.h"
#include "datahub.h"
#include "driver.h"


ExtInterface::ExtInterface(ControlUnit* CU)
    : CU(CU), pause(false)
{

}

bool ExtInterface::sendtoplayer(Driver *d, Decision data){

    if(d==p1driver) {
        p1decision=(*(CU->player1))(1,P1sel, CU->theball->pos(), CU->thepaddle1->pos(), char(data));
    }
    else if(d==p2driver) p2decision=(*(CU->player2))(1,P2sel, CU->theball->pos(), CU->thepaddle2->pos(), char(data));
    else return false;
    return true;
}

bool ExtInterface::updateDecision(Driver *d, Decision data){

    if(d==p1driver) {
        p1decision=data;
    }
    else if(d==p2driver) p2decision=data;
    else return false;
    return true;
}

void ExtInterface::reset(){

    if(P1sel == SEL_BPC) p1decision = (*(CU->player1))(1,P1sel, CU->theball->pos(), CU->thepaddle1->pos(), char(NONE));
    else p1decision = UNKNOWN;

    if(P2sel == SEL_BPC) p2decision = (*(CU->player2))(1,P2sel, CU->theball->pos(), CU->thepaddle2->pos(), char(NONE));
    else p2decision = UNKNOWN;
}



