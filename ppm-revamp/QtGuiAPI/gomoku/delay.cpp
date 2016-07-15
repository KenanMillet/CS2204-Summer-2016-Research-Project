#include "delay.h"


void delay(int timedelay)
{

    QTime dieTime= QTime::currentTime().addMSecs(timedelay);
    while (QTime::currentTime() < dieTime)
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
}
