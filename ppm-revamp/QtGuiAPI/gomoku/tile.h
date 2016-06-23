#ifndef TILE_H
#define TILE_H
#include <QLabel>

namespace Ui {
class Tile;
}

class Tile: public QLabel
{

       Q_OBJECT

public:

    //Fields
    int tileColor,piece,row,col,tileNum;
    char pieceName;


    //Constructors
    Tile(QWidget* pParent=0, Qt::WindowFlags f=0) : QLabel(pParent, f) {};
    Tile(const QString& text, QWidget* pParent = 0, Qt::WindowFlags f = 0) : QLabel(text, pParent, f){};

    //Methods
    void mousePressEvent(QMouseEvent *event);
    void display(char elem);
    void tileDisplay();




private:
    static bool turn;

signals:
      void checkifwin(Tile&);
};

#endif // TILE_H
