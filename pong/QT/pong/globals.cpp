#include "globals.h"
#include <QTime>
#include <QCoreApplication>

bool pause = false;

void delay(int timedelay)
{
    QTime dieTime= QTime::currentTime().addMSecs(timedelay);
    while (QTime::currentTime() < dieTime)
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
}
