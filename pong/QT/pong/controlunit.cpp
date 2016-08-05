#include "controlunit.h"
#include "datahub.h"
#include <QCoreApplication>
#include <QTime>
#include "qdebug.h"
ControlUnit::ControlUnit(): state(0), thetick(new tick), player1(new Player), player2(new Player), interface(new ExtInterface(this)) {}



void ControlUnit::reset(){
    theball->reset();
    thetick->reset();
    player1->reset();
    player2->reset();
    state = 0;

}




void ControlUnit::statemachine(bool start){
//    player1(0, 1, this->theball->pos(), this->thepaddle1->pos(), 0);
//    player2(0, 1, this->theball->pos(), this->thepaddle1->pos(), 0);

    if(state == 0){
        reset();
        if(start) state=1;
    }
    else if(state == 1){
        thepaddle1->direction = interface->p1decision;
        thepaddle2->direction = interface->p2decision;
        if(interface->p1decision!=UNKNOWN && interface->p2decision!=UNKNOWN) state = 2;
    }
    else if(state == 2){
//        (*thetick)();
        (*thetick)(0);
        interface->reset();
        state=1;
    }

}







void ControlUnit::start(){
    statemachine(1);
}





