#include "tile.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "dialog.h"
#include <QApplication>


bool Tile::turn = true;

void Tile::mousePressEvent(QMouseEvent *event)
{

   if(this->piece == 0){
        if(turn){
        this->setPixmap(QPixmap(":/Images/bishop_black.svg"));
        this->piece=1;
        }

        else{
        this->setPixmap(QPixmap(":/Images/bishop_white.svg"));
        this->piece = 2;
       }
    turn=!turn;
    emit checkifwin(*this);
   }
}



void Tile::tileDisplay()
{

    if(this->tileColor)
      this->setStyleSheet("QLabel {background-color: rgb(120, 120, 90);}:hover{background-color: rgb(170,85,127);}");
    else
        this->setStyleSheet("QLabel {background-color: rgb(211, 211, 158);}:hover{background-color: rgb(170,95,127);}");
}







