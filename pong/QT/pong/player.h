#ifndef PLAYER_H
#define PLAYER_H
#include <QGraphicsRectItem>

class DataHub;

enum Controller : char
{
    SEL_IPC = 1,
    SEL_BPC = 2
};

enum Decision : char
{
    NONE=0,
    UP=1 << 0,
    DOWN = 1 << 1,
    LEFT = 1 <<2,
    RIGHT = 1<< 3,
    UNKNOWN = UP + DOWN + LEFT + RIGHT
};

QDebug operator<<(QDebug, const Decision&);

class Player{
    class IPC{
    public:
        Decision play(char);
        void reset();
    };
    class BPC{
    public:
        Decision play(QPointF, QPointF);
        void reset();
    };
 public:
    Decision operator()(bool, Controller, QPointF, QPointF, char);
    void reset();
    DataHub* dh;

 private:
    IPC ipc;
    BPC bpc;

};

#endif // PLAYER_H

