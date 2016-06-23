#include <QApplication>
#include "mainwindow.h"
#include "tile.h"
#include "ui_mainwindow.h"
#include "QPicture"
#include "qDebug"




void chessBoard(QWidget *baseWidget, Tile *tile[15][15], MainWindow& w)
{
    int i,j,k=0,hor,ver;


    //Create 64 tiles (allocating memories to the objects of Tile class)
    ver=30;
    for(i=0;i<15;i++)
    {
        hor=30;
        for(j=0;j<15;j++)
        {
            tile[i][j] = new Tile(baseWidget);
            tile[i][j]->tileColor=(i+j)%2;
            tile[i][j]->piece=0;
            tile[i][j]->row=i;
            tile[i][j]->col=j;
            tile[i][j]->tileNum=k++;
            tile[i][j]->tileDisplay();
            tile[i][j]->setGeometry(hor,ver,45,45);
            w.dosetup(*tile[i][j]);

            hor+=45;
        }
        ver+=45;
    }
}





int main(int argc, char *argv[])
{
    QApplication a(argc, argv);


  //  QWidget *myWidget = new QWidget();
    MainWindow w;

    //w.setGeometry(0,0,2700,2700);
    w.widget.setGeometry(30,30,1700,900);


    chessBoard(&(w.widget),w.tile, w);


    w.widget.show();
    return a.exec();
}

