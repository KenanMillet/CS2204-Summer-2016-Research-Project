#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>
#include <QStringList>
#include <QtSerialPort/QSerialPortInfo>
#include <QtSerialPort/QSerialPort>

class WorkerThread;
class QLabel;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();


    void setWorkerThread(WorkerThread *thread);





    void updateGUI(QString& data);

private:
    Ui::MainWindow *ui;
    WorkerThread *t;


public slots:
    // Base function for handling when new data is read from the serial port
    void newDataRead(QString);



private slots:
    void on_Send_clicked();
};

#endif // MAINWINDOW_H
