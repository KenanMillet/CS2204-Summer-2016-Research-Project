#ifndef MACHINEPLAYER_H
#define MACHINEPLAYER_H


#include <QApplication>

#include "player.h"



class MainWindow;
class Tile;


class machineplayer : public Player{


public:
       MainWindow* w;
       machineplayer(MainWindow* bosswindow);



       Tile* play(Tile* t);







};


#endif // MACHINEPLAYER_H

