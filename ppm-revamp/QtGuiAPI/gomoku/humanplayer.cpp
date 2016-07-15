#include "humanplayer.h"
#include "qdebug.h"
#include "delay.h"
#include "qdebug.h"

humanplayer::humanplayer(MainWindow*)
{
}


Tile* humanplayer::play(Tile*){
    while(!turnends && currenttile == nullptr){
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
    }

        turnends = false;
        Tile* temp = currenttile;
        currenttile = nullptr;
        return temp;
}



//HumanPlayer:
//    while(!turnends && currenttile == nullptr)
//    { ... }
//    turnends = false;
//    Tile* temp = currenttile;
//    currenttile = nullptr;
//    return temp;
