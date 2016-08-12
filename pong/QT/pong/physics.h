#ifndef PHYSICS_H
#define PHYSICS_H
#include "ball.h"
#include "paddle.h"
#include "mainwindow.h"
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include "controlunit.h"

class DataHub;


class physics{
 public:
    physics();
    ball* theball;
    paddle* thepaddle1;
    paddle* thepaddle2;
    QGraphicsScene* scene;
    void start();
    bool stop;
    ControlUnit* CU;
    DataHub* dh;
    MainWindow* m;
};







#endif // PHYSICS_H

