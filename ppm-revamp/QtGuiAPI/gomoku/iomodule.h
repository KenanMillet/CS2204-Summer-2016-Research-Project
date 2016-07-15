#ifndef IOMODULE_H
#define IOMODULE_H

#include <QObject>
#include <QThread>
#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include "player.h"
#include "machineplayer.h"
#include "humanplayer.h"

class Tile;
class Player;
class humanplayer;
class machineplayer;

class IOModule : public QObject
{
    Q_OBJECT

public:
    explicit IOModule(QObject *parent = 0);

    void doSetup(QThread &cThread);

    void setRead();

    void setWrite();

    void setWriteData(const QString& newData);

    void setOldData(const QString& newData);

    void stopThread();

    void determinewritedata(Tile& t, bool win);

    void SetupP1(Player* p);
    void SetupP2(Player* p);

    Player* player1;
    Player* player2;




private:
    int readWrite;
    QString writeData;
    QString oldData;
    bool stop;



signals:
    // Signal will be emitted when a line of data was read from the serial port
    void serialCommDone(QString);
    void showcomport(QString);

public slots:
    /* doWork manages serial communication with threading
     * readWrite denotes reading with 0 and writing with a 1
     * writeData is an empty string by default since readWrite defaults to 0 for reading
     * oldData will be used for comparison to see if any new data has been read from the serial communication
     *
     * doWork can read in a line of data from a serial communication port and emit with serialCommDone
     * doWork can write a QString to the serial communication port
     */
    void doWork();
};







#endif // IOMODULE_H

