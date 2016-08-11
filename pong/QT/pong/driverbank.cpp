#include "driverbank.h"
#include "driver.h"

#include "globals.h"
#include <QKeyEvent>

using namespace std;

bool DriverBank::eventFilter(QObject *target, QEvent *e)
{
    Q_UNUSED(target);

    if ( e->type() == QEvent::KeyPress && !(((QKeyEvent *)e)->isAutoRepeat()) && (((QKeyEvent *)e)->key() == Qt::Key_P)) pause = true;
    if ( e->type() == QEvent::KeyRelease && !(((QKeyEvent *)e)->isAutoRepeat()) && (((QKeyEvent *)e)->key() == Qt::Key_P)) pause = false;

    for(Driver* d : bank) d->handle(e);

    return false;
}

void DriverBank::addDriver(Driver* d)
{
    bank.push_back(d);
}



void DriverBank::clearbank(){
    bank.clear();
}
