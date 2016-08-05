#include "paddle.h"
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include <QObject>
#include "datahub.h"
#include "qdebug.h"

paddle::paddle(qreal x, qreal y, qreal w, qreal h): QGraphicsRectItem(x, y, w, h), velocityX(10), velocityY(10){}



void paddle::tick(void* instance, qreal timeelapsed){
    paddle* self = (paddle*)instance;
    int vertical = 0;
    int horizontal = 0;

    if((char(self->direction) & char(UP)) == char(UP)) vertical = -1;
    if((char(self->direction) & char(DOWN)) == char(DOWN)) vertical = 1;
    if((char(self->direction) & char(LEFT)) == char(LEFT)) horizontal = -1;
    if((char(self->direction) & char(RIGHT)) == char(RIGHT)) horizontal = 1;

    self->moveBy(timeelapsed * self->velocityX * horizontal, timeelapsed * self->velocityY * vertical);
}

void paddle::onTick(qreal delta){
    //qDebug() << "the position of the paddle is " << this->pos().x() << ", " << this->pos().y();

    int vertical = 0;
    int horizontal = 0;

    if((char(direction) & char(UP)) == char(UP)) vertical = -1;
    if((char(direction) & char(DOWN)) == char(DOWN)) vertical = 1;
    if((char(direction) & char(LEFT)) == char(LEFT)) horizontal = -1;
    if((char(direction) & char(RIGHT)) == char(RIGHT)) horizontal = 1;

    moveBy(delta * velocityX * horizontal, delta * velocityY * vertical);
}


