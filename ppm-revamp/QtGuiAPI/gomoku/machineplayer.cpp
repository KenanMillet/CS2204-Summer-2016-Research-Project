#include "tile.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
//#include <QApplication>
//#include "player.h"
#include "machineplayer.h"
#include "qdebug.h"
#include "delay.h"
machineplayer::machineplayer(MainWindow* bosswindow)
    : w(bosswindow)
{
}

Tile* machineplayer::play(Tile* t){

    Tile* playtile;
    do{
        if(t != nullptr){
            int row=t->row;
            int col=t->col;
            if(w->tile[row][col+1]->piece==0 && col < 14){
                playtile = w->tile[row][col+1];
            }
            else if(w->tile[row][col-1]->piece==0 && col > 0){
                playtile = w->tile[row][col-1];
            }
            else if(w->tile[row+1][col]->piece==0 && row < 14){
                playtile = w->tile[row+1][col];
            }
            else if(w->tile[row-1][col]->piece==0 && row > 0){
                playtile = w->tile[row-1][col];
            }
            else if(w->tile[row+1][col+1]->piece==0 && row < 14 && col <14){
                playtile = w->tile[row+1][col+1];
            }
            else{
                return nullptr;
            }
        }
        else{
                playtile = w->tile[5][5];
        }

        playtile->mousePressEvent(nullptr);
    } while(currenttile == nullptr);
    currenttile = nullptr;
    return playtile;
}








