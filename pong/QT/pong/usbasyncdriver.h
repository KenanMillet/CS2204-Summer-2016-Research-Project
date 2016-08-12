#ifndef USBASYNCDRIVER_H
#define USBASYNCDRIVER_H
#include <QSerialPortInfo>
#include <QString>
#include "driver.h"

class ControlUnit;
class QSerialPort;
class QThread;

class USBasyncDriver : public Driver{
    Q_OBJECT
public:
    USBasyncDriver(ExtInterface*, unsigned int, ControlUnit*, QThread*, bool=true);
    ~USBasyncDriver();
    void handle(void*);
    void processData(QString data);
signals:
    void doneReading();
public slots:
    void read();
    void send();
    void sendCompressed();

private:
    ControlUnit* CU;
    QSerialPort* SP;
    QThread* ST;
    QString data;
    QSerialPortInfo port;
    const bool compress;
};

#endif // USBASYNCDRIVER_H

