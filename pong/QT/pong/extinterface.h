#ifndef EXTINTERFACE_H
#define EXTINTERFACE_H
#include "player.h"
#include <QObject>


class DataHub;
class Driver;
class ControlUnit;

class ExtInterface
{   
public:
    ExtInterface(ControlUnit*);

    bool pause;

    Controller P1sel;
    Controller P2sel;
    Decision p1decision;
    Decision p2decision;
    void reset();
    bool sendtoplayer(Driver* d, Decision data);

    DataHub* dh;
    Driver* p1driver;
    Driver* p2driver;
    ControlUnit* CU;

};





#endif // EXTINTERFACE_H

