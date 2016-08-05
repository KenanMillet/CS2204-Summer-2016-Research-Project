#ifndef BALL_H
#define BALL_H
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include "tickable.h"

class DataHub;

class ball : public QGraphicsEllipseItem, public Tickable{
public:
    ball(qreal x, qreal y, qreal w, qreal h);
    qreal velocityX;
    qreal velocityY;
    static void tick(void* instance, qreal timeelapsed);
    void onTick(qreal);
    void reset();
    void flipY();
    void flipX();
    DataHub* dh;
};




#endif // BALL_H

