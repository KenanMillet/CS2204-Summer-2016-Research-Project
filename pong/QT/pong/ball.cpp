#include "ball.h"
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include <QObject>
#include "datahub.h"
#include "qdebug.h"

ball::ball(qreal x, qreal y, qreal w, qreal h): QGraphicsEllipseItem(x, y, w, h){
    reset();
}


void ball::tick(void* instance, qreal timeelapsed){
    ball* self = (ball*)instance;
    self->moveBy(timeelapsed * self->velocityX, timeelapsed * self->velocityY);


}

void ball::onTick(qreal delta)
{
    //qDebug() << "the position of the ball is " << this->pos().x() << ", " << this->pos().y();
    //qDebug() << "the direction of the ball is " << ((velocityY < 0) ? "Up -":((velocityY > 0) ? "Down -":"")) << ((velocityX < 0) ? "Left":((velocityX > 0) ? "Right":""));
    moveBy(delta * velocityX*3, delta * velocityY*3);
}

void ball::flipY()
{
    if(velocityY == -1){
        velocityY = 1;
//        qDebug() << "Y is flipped to be 1";
    }
    else if(velocityY == 1){
        velocityY = -1;
//        qDebug() << "Y is flipped to be -1";

    }
}

void ball::flipX()
{
    if(velocityX == -1){
        velocityX = 1;
    }
    else if(velocityX == 1){
        velocityX = -1;
    }
}

void ball::reset(){
    setPos(500, 500);
    velocityX = 1;
    velocityY = 1;
}



