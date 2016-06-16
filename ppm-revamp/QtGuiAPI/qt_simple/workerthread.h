#ifndef WORKERTHREAD_H
#define WORKERTHREAD_H

#include <QObject>
#include <QThread>
#include <QtSerialPort/QSerialPortInfo>
#include <QtSerialPort/QSerialPort>


class WorkerThread : public QObject
{
    Q_OBJECT

public:
    explicit WorkerThread(QObject *parent = 0);

    void doSetup(QThread &cThread);

    void setRead();

    void setWrite();

    void setWriteData(const QString& newData);

    void setOldData(const QString& newData);

    void stopThread();


    void endTurnP1(const QString &data);



private:
    int readWrite;
    QString writeData;
    QString oldData;
    bool stop;

signals:
    // Signal will be emitted when a line of data was read from the serial port
    void serialCommDone(QString);

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

#endif // WORKERTHREAD_H
