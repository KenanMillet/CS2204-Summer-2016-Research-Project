#ifndef DRIVER_H
#define DRIVER_H
#include "extinterface.h"
#include "player.h"
#include <QWidget>

class DataHub;


class Driver : public QObject
{
    Q_OBJECT
public:
    Driver(ExtInterface*, unsigned int);
    ExtInterface* Extpointer;
    void senddata();
    Decision data;
    Driver* parent;

    unsigned int id;

    virtual void handle(void*) = 0;
};



#endif // DRIVER_H

