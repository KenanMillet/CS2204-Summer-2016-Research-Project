#include "iomodule.h"
//#include "mainwindow.h"
//#include "ui_mainwindow.h"
#include <QThread>
#include <QString>
#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include "player.h"
#include "machineplayer.h"
#include "humanplayer.h"
#include <QDebug>

#define TIMEOUT_MS 1000

class Player;
class machineplayer;
class humanplayer;

IOModule::IOModule(QObject *parent) : QObject(parent)
{
    this->readWrite = 0;
    this->writeData = "";
    this->oldData   = "";
    this->stop      = false;
}

void IOModule::doSetup(QThread& cThread)
{
    connect(&cThread, SIGNAL(started()), this, SLOT(doWork()));
}

void IOModule::setRead()
{
    this->readWrite = 0;
}

void IOModule::setWrite()
{
    this->readWrite = 1;
}

void IOModule::setWriteData(const QString& newData)
{
    this->writeData = newData;
}

void IOModule::setOldData(const QString &newData)
{
    this->oldData = newData;
}

void IOModule::stopThread()
{
    this->stop = true;
}


void IOModule::doWork()
{

    QSerialPort serPort;

    QList<QSerialPortInfo> serPortList = QSerialPortInfo::availablePorts();
    qDebug() << "this only get print once, the port connecting to is" << serPortList[1].portName();

    serPort.setPort(serPortList.at(serPortList.length() - 1));

    serPort.open(QIODevice::ReadWrite);

    QString fpgaData;

    while (!stop) {
        if (readWrite == 0 && serPort.waitForReadyRead(TIMEOUT_MS)) {
            if (serPort.canReadLine()) {
                fpgaData = serPort.readLine();

                if (fpgaData != oldData) {
                    qDebug() << "Data Read = " << fpgaData;

                    oldData = fpgaData;

                    emit serialCommDone(fpgaData);           
                }
            }
        }

        // Write data if readWrite is 1
        if (readWrite == 1) {
            serPort.write(writeData.toStdString().c_str());
            qDebug() << "text is being sent" << serPort.flush();
            setRead();
        }
    }

    serPort.close();
}




void IOModule::determinewritedata(Tile& t, bool win){
    QString writedata;
    writedata.sprintf("%u%X%X%u", int(!t.turn), t.row, t.col, int(win) * ((t.turn) ? 1:2) );
    qDebug() << "the determinewritedata determines data to be" << writedata;
    setWriteData(writedata);
    setWrite();

}


void IOModule::SetupP1(Player* p){
    player1 = p;
    player1->turnends = false;
    player1->myturn = true;

}

void IOModule::SetupP2(Player* p){
    player2 = p;
    player2->turnends = false;
    player2->myturn = false;
}


