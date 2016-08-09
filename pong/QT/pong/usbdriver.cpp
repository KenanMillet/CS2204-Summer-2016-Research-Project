#include "usbdriver.h"
#include <QThread>
#include <QString>
#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include "player.h"
#include "qdebug.h"

#define TIMEOUT_MS 5

USBdriver::USBdriver(ExtInterface* interface, unsigned int id, ControlUnit* CU, QThread* serialthread): Driver(interface, id), stop(false), CU(CU){
    connect(serialthread, SIGNAL(started()), this, SLOT(dowork()));
}

void USBdriver::dowork(){
    QSerialPort serPort;

    QList<QSerialPortInfo> serPortList = QSerialPortInfo::availablePorts();
    qDebug() << "this only get print once, the port connecting to is" << serPortList[0].portName();

    serPort.setPort(serPortList.at(serPortList.length() - 1));

    serPort.open(QIODevice::ReadWrite);

    QString fpgaData;

    while (!stop) {


        setwrite();


        serPort.write(writeData.toStdString().c_str());
        /*qDebug() << "text is being sent" << */
        serPort.flush();

        if (serPort.waitForReadyRead(TIMEOUT_MS)) {
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
//    if(data=="UP"){
//        thedecision = UP;
//    }
//    if(data == "DOWN"){
//        thedecision = DOWN;
//    }
//    if(data == "LEFT"){
//        thedecision = LEFT;
//    }
//    if(data == "RIGHT"){
//        thedecision = RIGHT;
//    }

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


    data.sprintf("%04d %04d %04d %04d %04d %04d", ballposx, ballposy, paddle1posx, paddle1posy, paddle2posx, paddle2posy);

    writeData = data;
}



void USBdriver::handle(void* event){
    Q_UNUSED(event)

}




