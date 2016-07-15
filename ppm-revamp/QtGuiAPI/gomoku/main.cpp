#include <QApplication>
#include "mainwindow.h"
#include "tile.h"
#include "ui_mainwindow.h"
#include "QPicture"
#include "qDebug"
//#include "player.h"
#include "machineplayer.h"
#include "humanplayer.h"
#include <QThread>
#include "controlunit.h"
#include "delay.h"



class Wincheck;





int main(int argc, char *argv[])
{
    QApplication a(argc, argv);


  //  QWidget *myWidget = new QWidget();
    MainWindow w(0, new ControlUnit);


    w.setGeometry(30,30,1000,1000);
//    w.setCentralWidget(w.ui->chessboardwidget);
//    w.ui->chessboardwidget->setGeometry(0,0,700, 700);
    w.ui->P1P2label->setGeometry(720, 30, 200, 20);
    w.ui->HumanMachine->setGeometry(720, 60, 200, 20);
    w.ui->MachineHuman->setGeometry(720, 90, 200, 20);
    w.ui->MachineMachine->setGeometry(720, 120, 200, 20);
    w.ui->HumanHuman->setGeometry(720, 150, 200, 20);
    w.ui->StartOver->setGeometry(720, 180, 200, 20);

    QThread serialthread;


    ControlUnit* CUnit = w.cunit;
    CUnit->io = w.cThread;
    Wincheck* wcheck = new Wincheck;
    wcheck->w = &w;
    CUnit->wcheck = wcheck;




    //have to connect the FPGA here!!!!!!!!!
    w.cThread->doSetup(serialthread);
    w.cThread->moveToThread(&serialthread);
    w.SetCommThread(w.cThread);
    serialthread.start();



    w.show();

    CUnit->start();
    serialthread.quit();
    //return a.exec();
    return 0;
}

