#ifndef CONTROLUNIT_H
#define CONTROLUNIT_H
#include "iomodule.h"
#include "tile.h"
#include "wincheck.h"



class ControlUnit{
public:
    ControlUnit();
   IOModule* io;
   Tile* tile;
   Tile* tilejustplayed;
   Wincheck* wcheck;
   void TogglePlayer();
   void start();
   bool stop;
   bool toggling;
   bool win;
   bool newgame;




};





#endif // CONTROLUNIT_H

