#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <tile.h>
#include "iomodule.h"
#include "player.h"
#include <QCloseEvent>


class machineplayer;
class Tile;
class Wincheck;
class IOModule;
class ControlUnit;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0, ControlUnit* = nullptr);
    ~MainWindow();
    QWidget widget;
    Ui::MainWindow *ui;
    Tile *tile[15][15];
    IOModule* cThread;
    void SetCommThread(IOModule* theThread);
    void chessBoard(QWidget *baseWidget, Tile *tile[15][15], MainWindow& w, Player* hp1 = nullptr, Player* hp2 = nullptr);


    Player* hp1;
    Player* hp2;
    Player* mp1;
    Player* mp2;
    Player* vp1;
    Player* vp2;

    Player* cp1;
    Player* cp2;

    ControlUnit* cunit;



private slots:






    void on_MachineHuman_toggled(bool checked);

    void on_HumanMachine_toggled(bool checked);



    void on_HumanHuman_toggled(bool checked);

    void on_MachineMachine_toggled(bool checked);

    void on_StartOver_clicked();

    void closeEvent( QCloseEvent *);

private:


};

#endif // MAINWINDOW_H
