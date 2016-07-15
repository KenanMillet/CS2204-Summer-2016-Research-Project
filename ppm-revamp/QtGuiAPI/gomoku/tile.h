#ifndef TILE_H
#define TILE_H
#include <QLabel>
#include <QEvent>


class MainWindow;

namespace Ui {
class Tile;
}

class Player;

class Tile: public QLabel
{

       Q_OBJECT

public:

    //Fields
    int tileColor,piece,row,col;
    static int tileid;
    char pieceName;
    MainWindow* bosswindow;


    //Constructors
    Tile(QWidget* pParent=0, Qt::WindowFlags f=0) : QLabel(pParent, f) {};
    Tile(const QString& text, QWidget* pParent = 0, Qt::WindowFlags f = 0) : QLabel(text, pParent, f){};

    //Methods
    void mousePressEvent(QMouseEvent *event);
    void display(char elem);
    void tileDisplay();

    static bool turn;
    Player* cp1;
    Player* cp2;







};

#endif // TILE_H
