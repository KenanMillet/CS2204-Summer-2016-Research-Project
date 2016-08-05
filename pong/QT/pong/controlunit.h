#ifndef CONTROLUNIT_H
#define CONTROLUNIT_H
#include "ball.h"
#include "paddle.h"
#include "tick.h"
#include "player.h"
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include <QObject>
#include "extinterface.h"

class DataHub;

class ControlUnit : public QObject{
    Q_OBJECT
public:

    ControlUnit();
    void reset();
    QGraphicsScene* scene;
    ball* theball;
    paddle* thepaddle1;
    paddle* thepaddle2;
    tick* thetick;
    Player* player1;
    Player* player2;
    ExtInterface* interface;
    int state;
    void statemachine(bool);
    DataHub* dh;

    void start();



};






#endif // CONTROLUNIT_H

