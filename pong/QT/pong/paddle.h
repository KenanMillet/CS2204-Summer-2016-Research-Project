#ifndef PADDLE_H
#define PADDLE_H
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include <QObject>
#include "player.h"
#include "tickable.h"

class DataHub;

class paddle : public QGraphicsRectItem, public Tickable{
public:
    paddle(qreal x, qreal y, qreal w, qreal h);
    qreal velocityX;
    qreal velocityY;
    static void tick(void* instance, qreal timeelapsed);
    void onTick(qreal);
    Decision direction;
    DataHub* dh;


};



#endif // PADDLE_H

