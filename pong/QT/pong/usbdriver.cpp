#include "usbdriver.h"
#include "player.h"
#include "qdebug.h"
#include <QThread>
#include <QString>
#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include <QDebug>
#include "globals.h"

#define TIMEOUT_MS 20

USBdriver::USBdriver(ExtInterface* interface, unsigned int id, ControlUnit* CU, QThread* serialthread): Driver(interface, id), stop(false), debug(false), CU(CU){
    connect(serialthread, SIGNAL(started()), this, SLOT(dowork()));
}

void USBdriver::dowork(){
//    int i = 1;
    QSerialPort serPort;

    QList<QSerialPortInfo> serPortList = QSerialPortInfo::availablePorts();
    qDebug() << "this only get print once, the port connecting to is" << serPortList.at(serPortList.length() - 1).portName();
    serPort.setPort(serPortList.at(serPortList.length() - 1));
    serPort.open(QIODevice::ReadWrite);
    QString fpgaData;

    while (!stop) {
        setwrite();
        serPort.write(writeData.toStdString().c_str());
        /*qDebug() << "text is being sent" << */
        serPort.flush();


        if (serPort.waitForReadyRead(-1)) {
            if (serPort.canReadLine()) {
                fpgaData = serPort.readLine();
                processData(fpgaData);
            }
        }
    }

    serPort.close();
}




void USBdriver::processData(QString data){
    Decision thedecision;

    if(data.length() == 0) return;

    thedecision = Decision(data.toStdString().at(0));

    Extpointer->updateDecision(this, thedecision);
}






void USBdriver::setwrite(){
    QString data;
    int ballposx = int(CU->theball->pos().x());
    int ballposy = int(CU->theball->pos().y());

    int paddle1posx = int(CU->thepaddle1->pos().x());
    int paddle1posy = int(CU->thepaddle1->pos().y());

    int paddle2posx = int(CU->thepaddle2->pos().x());
    int paddle2posy = int(CU->thepaddle2->pos().y());

    if(debug)
    {
        QDebug deb = qDebug();
        deb << "    P2 Prediction:";
        if(ballposx < paddle2posx) deb << "LEFT";
        if(ballposx > paddle2posx) deb << "RIGHT";
        if(ballposx == paddle2posx) deb << "NONE";
        deb.nospace() << "(" << ballposx - paddle2posx << ")";
        deb.~QDebug();
    }

    data.sprintf("%04d %04d %04d %04d %04d %04d", ballposx, ballposy, paddle1posx, paddle1posy, paddle2posx, paddle2posy);

    writeData = data;
}



void USBdriver::handle(void* event){
    Q_UNUSED(event)

}




