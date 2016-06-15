#include "workerthread.h"
#include <QDebug>
#include <QThread>
#define TIMEOUT_MS 1000



WorkerThread::WorkerThread(QObject *parent) : QObject(parent)
{
    this->readWrite = 0;
    this->writeData = "";
    this->oldData   = "";
    this->stop      = false;
}

void WorkerThread::doSetup(QThread& cThread)
{
    connect(&cThread, SIGNAL(started()), this, SLOT(doWork()));
}

void WorkerThread::setRead()
{
    this->readWrite = 0;
}

void WorkerThread::setWrite()
{
    this->readWrite = 1;
}

void WorkerThread::setWriteData(const QString& newData)
{
    this->writeData = newData;
}

void WorkerThread::setOldData(const QString &newData)
{
    this->oldData = newData;
}

void WorkerThread::stopThread()
{
    this->stop = true;
}

void WorkerThread::endTurnP1(const QString& data)
{

    setWriteData(data);

    setWrite();
}


void WorkerThread::doWork()
{
    QSerialPort serPort;

    QList<QSerialPortInfo> serPortList = QSerialPortInfo::availablePorts();

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
            serPort.flush();
            setRead();
        }
    }

    serPort.close();
}

