#ifndef USBDRIVER
#define USBDRIVER
#include "driver.h"
#include "controlunit.h"


class USBdriver : public Driver{
    Q_OBJECT
public:
    USBdriver(ExtInterface*, unsigned int, ControlUnit*, QThread*);
    bool stop;
    void processData(QString);
    ControlUnit* CU;
    void setwrite();
    QString writeData;
    void handle(void*);

    bool debug;
public slots:

    void dowork();



};




#endif // USBDRIVER

