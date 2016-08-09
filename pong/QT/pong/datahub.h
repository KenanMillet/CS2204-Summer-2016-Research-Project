#ifndef DATAHUB_H
#define DATAHUB_H
#include "controlunit.h"
#include "player.h"
#include "physics.h"
#include "extinterface.h"
#include "ball.h"
#include "paddle.h"
#include "tick.h"
#include "usbio.h"


class DataHub{
public:
    Player* P1;
    Player* P2;
    Usbio* usb;
    Decision P1play(bool, Controller, QPointF, QPointF, char);
    void P1reset();
    Decision P2play(bool, Controller, QPointF, QPointF, char);
    void P2reset();





};





#endif // DATAHUB_H

