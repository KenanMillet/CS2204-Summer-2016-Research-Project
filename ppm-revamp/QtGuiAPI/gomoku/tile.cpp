#include "tile.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QApplication>
#include "player.h"
#include "qdebug.h"



bool Tile::turn = true;
int Tile::tileid = 0;

//mousepressevent:
//    if(turn)
//    {
//        if(cp1->playthere(this)) cp1->currenttile = this;
//        else cp1->currenttile = nullptr;
//    }
//    else
//    {
//        if(cp2->playthere(this)) cp2->currenttile = this;
//        else cp2->currenttile = nullptr;
//    }

//HumanPlayer:
//    while(!turnends && currenttile == nullptr)
//    { ... }
//    turnends = false;
//    Tile* temp = currenttile;
//    currenttile = nullptr;
//    return temp;

//MachinePlayer:
//    Tile* playtile;
//    do
//    {
//        some ai logic to select playtile...
//        playtile->mousepressevent(nullptr);
//    } while(currenttile == nullptr);
//    return currenttile;





void Tile::mousePressEvent(QMouseEvent*)
{
        if(turn)
        {
            if(bosswindow->cThread->player1->playthere(this)) bosswindow->cThread->player1->currenttile = this;
            else bosswindow->cThread->player1->currenttile = nullptr;
        }
        else
        {
            if(bosswindow->cThread->player2->playthere(this)) bosswindow->cThread->player2->currenttile = this;
            else bosswindow->cThread->player2->currenttile = nullptr;
        }
        qDebug() << "CP1 Current tile = " << ((bosswindow->cThread->player1->currenttile == nullptr) ? "nullptr":"valid") << ".";
        qDebug() << "CP2 Current tile = " << ((bosswindow->cThread->player2->currenttile == nullptr) ? "nullptr":"valid") << ".";
}







void Tile::tileDisplay()
{

    if(this->tileColor)
      this->setStyleSheet("QLabel {background-color: rgb(120, 120, 90);}:hover{background-color: rgb(170,85,127);}");
    else
        this->setStyleSheet("QLabel {background-color: rgb(211, 211, 158);}:hover{background-color: rgb(170,95,127);}");
}







