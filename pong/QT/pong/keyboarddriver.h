#ifndef KEYBOARDDRIVER
#define KEYBOARDDRIVER
#include "driver.h"
#include "qevent.h"
#include <QObject>
#include <QKeyEvent>

class DriverBank;

class Keyboarddriver : public Driver{
public:
    Keyboarddriver(ExtInterface*, unsigned int, Qt::Key, Qt::Key, Qt::Key, Qt::Key, DriverBank* = nullptr);
//    bool eventFilter(QObject *target, QEvent *e);

    void handle(void*);

    Qt::Key upKey;
    Qt::Key downKey;
    Qt::Key leftKey;
    Qt::Key rightKey;
    Qt::Key pauseKey;
};









#endif // KEYBOARDDRIVER

