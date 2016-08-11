#include "usbasyncdriver.h"
#include <QThread>
#include <QSerialPort>
#include <QDebug>

#include "extinterface.h"
#include "player.h"
#include "controlunit.h"


USBasyncDriver::USBasyncDriver(ExtInterface* interface, unsigned int id, ControlUnit* CU, QThread* ST)
    : Driver(interface, id), CU(CU), ST(ST), SP(new QSerialPort)
{
    connect(SP, SIGNAL(readyRead()), this, SLOT(read()));
    connect(this, SIGNAL(doneReading()), this, SLOT(send()));
    connect(ST, SIGNAL(started()), this, SLOT(send()));
//    connect(this, SIGNAL(doneReading()), this, SLOT(sendCompressed()));
//    connect(ST, SIGNAL(started()), this, SLOT(sendCompressed()));

    QList<QSerialPortInfo> serPortList = QSerialPortInfo::availablePorts();
    port = serPortList.at(serPortList.length() - 1);
    qDebug() << "this only get print once, the port connecting to is" << port.portName();
    SP->setPort(port);
    SP->open(QIODevice::ReadWrite);

    SP->moveToThread(ST);
    this->moveToThread(ST);
    ST->start();
}

USBasyncDriver::~USBasyncDriver()
{
    SP->close();
    delete SP;
}



void USBasyncDriver::send()
{
    QString message;
    int ballposx = int(CU->theball->pos().x());
    int ballposy = int(CU->theball->pos().y());

    int paddle1posx = int(CU->thepaddle1->pos().x());
    int paddle1posy = int(CU->thepaddle1->pos().y());

    int paddle2posx = int(CU->thepaddle2->pos().x());
    int paddle2posy = int(CU->thepaddle2->pos().y());

    message.sprintf("%04d %04d %04d %04d %04d %04d", ballposx, ballposy, paddle1posx, paddle1posy, paddle2posx, paddle2posy);

    SP->write(message.toStdString().c_str());
    SP->flush();
}

void USBasyncDriver::sendCompressed()
{
    QString message;
    quint32 bx = quint32(CU->theball->pos().x());
    quint32 by = quint32(CU->theball->pos().y());

    quint32 p1x = quint32(CU->thepaddle1->pos().x());
    quint32 p1y = quint32(CU->thepaddle1->pos().y());

    quint32 p2x = quint32(CU->thepaddle2->pos().x());
    quint32 p2y = quint32(CU->thepaddle2->pos().y());

//    quint8 compBytes[8] = {
//        ((bx << (32-8)) >> (32-8)),
//        ((bx << (32-16)) >> (32-8)),
//        ((bx << (32-20)) >> (32-4)) + ((by << (32-4)) >> (32-4)),
//        ((by << (32-12)) >> (32-8)),
//        ((by << (32-20)) >> (32-8)),

//    };

//    message.sprintf("%04d %04d %04d %04d %04d %04d", ballposx, ballposy, paddle1posx, paddle1posy, paddle2posx, paddle2posy);

    SP->write(message.toStdString().c_str());
    SP->flush();
}

void USBasyncDriver::read()
{
    if (!(SP->canReadLine())) return;
    data = SP->readLine();
    processData(data);

    emit doneReading();
}

void USBasyncDriver::handle(void*)
{

}




void USBasyncDriver::processData(QString data){
    Decision thedecision;

    if(data.length() == 0) return;

    thedecision = Decision(data.toStdString().at(0));

    Extpointer->updateDecision(this, thedecision);
}

