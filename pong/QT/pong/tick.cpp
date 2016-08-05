#include "tick.h"
#include <QElapsedTimer>
#include "datahub.h"
#include "tickable.h"
#include <qDebug>
#include <QString>
#include <stdexcept>

using namespace std;

tick::tick(){
    timer.start();
}

qint64 tick::timeelasped(){
     qint64 delta = timer.nsecsElapsed() - prevTime;
     prevTime += delta;
     return delta;
}



// ball tick ,paddle tick are all registered here
void tick::registertick(void* instance, tickpointer funcpointer){
    qDebug().noquote() << "registering a tickfunction located at address:" << (QString().sprintf("0x%X", funcpointer));
    try
    {
        tickvector.push_back(funcpointer);
    }
    catch(exception& e)
    {
        qDebug() << "Exception caught:" << e.what();
    }

    qDebug().noquote() << "registering a ticked object located at address:" << (QString().sprintf("0x%X", instance));
    try
    {
        instvector.push_back(instance);
    }
    catch(exception& e)
    {
        qDebug() << "Exception caught:" << e.what();
    }
    qDebug() << "    ... Done";
}

void tick::registertick(Tickable* instance)
{
    qDebug().noquote() << "registering a tickable located at address:" << (QString().sprintf("0x%X", instance));
    try
    {
        tickablevector.push_back(instance);
    }
    catch(exception& e)
    {
        qDebug() << "Exception caught:" << e.what();
    }
    qDebug() << "    ... Done";
}



void tick::operator ()(){
    qreal delta = timeelasped()/qreal(10000000);
    for(int i = 0; i < tickvector.size() && i <instvector.size(); ++i) tickvector[i](instvector[i], delta);
}

void tick::operator ()(int){
    qreal delta = timeelasped()/qreal(10000000);
    for(Tickable* i : tickablevector) i->onTick(delta);
}


void tick::reset(){
    timeelasped();
}
