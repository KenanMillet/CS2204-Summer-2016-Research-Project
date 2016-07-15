#ifndef WINCHECK_H
#define WINCHECK_H
#include "tile.h"

#include "mainwindow.h"
//#include "ui_mainwindow.h"
class Tile;
class MainWindow;

class Wincheck : public QObject{

    Q_OBJECT

public:
    int counttoleft(Tile& t, int count = 0, int piece = 0);
    int counttoright(Tile& t, int count = 0, int piece = 0);
    int counttoup(Tile& t, int count = 0, int piece = 0);
    int counttodown(Tile& t, int count = 0, int piece = 0);
    int counttoupright(Tile& t, int count = 0, int piece = 0);
    int counttodownleft(Tile& t, int count = 0, int piece = 0);
    int counttoupleft(Tile& t, int count = 0, int piece = 0);
    int counttodownright(Tile& t, int count = 0, int piece = 0);

    MainWindow* w;






    bool winornot(Tile& t);




};








#endif // WINCHECK_H

