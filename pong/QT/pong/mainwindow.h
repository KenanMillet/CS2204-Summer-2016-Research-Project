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
class DataHub;
class physics;
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









};

#endif // MAINWINDOW_H
