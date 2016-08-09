#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qanimationgroup.h"
#include <QPropertyAnimation>
#include "tick.h"
#include <QApplication>
#include <QCoreApplication>
#include "qdebug.h"
#include "physics.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.SetupScene();
    //w.show();
    w.showMaximized();


    while(!w.stop)
    {
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);

        w.CU->start();
        w.thephysics->start();

    }

    exit(0);
//    return 0;
}
