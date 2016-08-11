#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include "ball.h"
#include "paddle.h"
#include <QMainWindow>
#include <QGraphicsScene>
#include <QGraphicsRectItem>
#include <QGraphicsEllipseItem>
#include <QPen>
#include <QResizeEvent>
#include <QDebug>
#include "controlunit.h"
#include "qthread.h"
class DataHub;
class physics;
class DriverBank;
class USBdriver;
class DriverBank;


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void closeEvent( QCloseEvent *);
    Ui::MainWindow *ui;
    ControlUnit* CU;
    void SetupScene();
    physics* thephysics;
    bool stop;
    DriverBank* db;
    void keyboard_vs_keyboard();
    void keyboard_vs_bot();
    void keyboard_vs_USB();
    Driver* KeyboardDriverWSAD;
    Driver* KeyboardDriverIKJL;
    USBdriver* usb;
    QThread serialthread;










private slots:
    void on_Keyboard_vs_bot_toggled(bool checked);
    void on_Keyboard_vs_keyboard_toggled(bool checked);
    void on_Keyboard_vs_USB_toggled(bool checked);
};

#endif // MAINWINDOW_H
