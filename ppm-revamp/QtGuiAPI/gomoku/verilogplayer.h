#ifndef VERILOGPLAYER_H
#define VERILOGPLAYER_H
#include "qstring.h"
#include "player.h"

class Verilogplayer : public Player{
    Q_OBJECT
public:
    MainWindow* w;
    Verilogplayer(MainWindow* bosswindow);
    Tile* play(Tile* t);
    int rowtoplay;
    int coltoplay;

public slots:
    void collectdata(QString datastring);


};







#endif // VERILOGPLAYER_H

