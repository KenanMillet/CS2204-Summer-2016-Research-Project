#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <tile.h>
#include <dialog.h>
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    QWidget widget;
     void dosetup(Tile& t);
    Tile *tile[15][15];
    int counttoleft(Tile& t, int count = 0, int piece = 0);
    int counttoright(Tile& t, int count = 0, int piece = 0);
    int counttoup(Tile& t, int count = 0, int piece = 0);
    int counttodown(Tile& t, int count = 0, int piece = 0);
    int counttoupright(Tile& t, int count = 0, int piece = 0);
    int counttodownleft(Tile& t, int count = 0, int piece = 0);
    int counttoupleft(Tile& t, int count = 0, int piece = 0);
    int counttodownright(Tile& t, int count = 0, int piece = 0);



private slots:

    void winornot(Tile& t);

private:
    Ui::MainWindow *ui;


};

#endif // MAINWINDOW_H
