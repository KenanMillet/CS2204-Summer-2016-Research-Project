#include "verilogplayer.h"
#include "tile.h"
#include "mainwindow.h"




Verilogplayer::Verilogplayer(MainWindow* bosswindow)
    : w(bosswindow)
{
}




Tile* Verilogplayer::play(Tile *t){
    while(rowtoplay == -1 && coltoplay == -1) QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
    t = w->tile[rowtoplay][coltoplay];
    t->mousePressEvent(nullptr);
    currenttile = nullptr;
    rowtoplay = -1;
    coltoplay = -1;
    return t;
}



void Verilogplayer::collectdata(QString datastring){
    char c = datastring.at(1).toLatin1();
    rowtoplay = c - ((c > '9') ? ('A'-10) : '0');
    c = datastring.at(2).toLatin1();
    coltoplay = c - ((c > '9') ? ('A'-10) : '0');
}
