#include "controlunit.h"
#include "qdebug.h"
#include "delay.h"
class tile;

ControlUnit::ControlUnit(): stop(false), tilejustplayed(nullptr), toggling(false){}




void ControlUnit::TogglePlayer(){
    if(win) return;

    if(Tile::turn == true){
        qDebug() << "player 1 is about to play";
        tilejustplayed = io->player1->play(tilejustplayed);
        if(tilejustplayed == nullptr) return;
        win = wcheck->winornot(*tilejustplayed);
        io->determinewritedata(*tilejustplayed, win);
    }
    else{
        qDebug() << "player 2 about to play";
        tilejustplayed = io->player2->play(tilejustplayed);
        if(tilejustplayed == nullptr) return;
        win = wcheck->winornot(*tilejustplayed);
        io->determinewritedata(*tilejustplayed, win);
    }

    Tile::turn = !(Tile::turn);
}



void ControlUnit::start(){
    while(true)
    {
        qDebug() << "Control unit has been started";
        while(stop == false){
            if(newgame)
            {
                Tile::turn = true;
                win = false;
                newgame = false;
            }
            if(!toggling) TogglePlayer();
            QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
        }
        qDebug() << "Control unit has been stopped";
        while(stop == true) QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
    }
}


