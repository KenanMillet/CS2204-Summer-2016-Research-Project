#ifndef GAME_H
#define GAME_H
#include "ball.h"
#include "paddle.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qanimationgroup.h"
#include <QPropertyAnimation>
#include <QApplication>
#include "datahub.h"

class game{
public:
        MainWindow* w;
        ball* ball;
        paddle* paddle1;
        paddle* paddle2;
        QGraphicsScene* scene;
        void determinePos();
        DataHub* dh;



};






#endif // GAME_H

