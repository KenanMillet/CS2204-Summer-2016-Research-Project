#ifndef PLAYER_H
#define PLAYER_H
#include "tile.h"
#include "playcheck.h"

class Tile;
class MainWindow;

class Player : public QObject{
    Q_OBJECT
public:
    Player(QObject *parent = 0);
    virtual Tile* play(Tile*) = 0;
    bool playthere(Tile* t);
    bool myturn;
    Tile* currenttile;
    bool turnends;
    Playcheck* playcheck;
    bool stop;


};





#endif // PLAYER_H

