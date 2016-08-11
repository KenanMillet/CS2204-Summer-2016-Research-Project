#include "keyboarddriver.h"
#include "qdebug.h"
#include "driverbank.h"


Keyboarddriver::Keyboarddriver(ExtInterface* interface, unsigned int id, Qt::Key upkey, Qt::Key downkey, Qt::Key leftkey, Qt::Key rightkey, DriverBank* db)
    : Driver(interface, id), upKey(upkey), downKey(downkey), leftKey(leftkey),rightKey(rightkey)
{
    if(db != nullptr) db->addDriver(this);
}

void Keyboarddriver::handle(void* event)
{
    QEvent *e = static_cast<QEvent*>(event);

    if ((e->type() == QEvent::KeyPress) && !(((QKeyEvent *)e)->isAutoRepeat()))
    {

        QKeyEvent *keyEvent = (QKeyEvent *)e;

        if ( keyEvent->key() == leftKey ) data = Decision(char(data) | char(LEFT));
        if ( keyEvent->key() == rightKey ) data = Decision(char(data) | char(RIGHT));
        if ( keyEvent->key() == upKey ) data = Decision(char(data) | char(UP));
        if ( keyEvent->key() == downKey ) data = Decision(char(data) | char(DOWN));
    }
    if ( e->type() == QEvent::KeyRelease && !(((QKeyEvent *)e)->isAutoRepeat())){

        QKeyEvent *keyEvent = (QKeyEvent *)e;

        if ( keyEvent->key() == leftKey ) data = Decision(char(data) & ~(char(LEFT)));
        if ( keyEvent->key() == rightKey ) data = Decision(char(data) & ~(char(RIGHT)));
        if ( keyEvent->key() == upKey ) data = Decision(char(data) & ~(char(UP)));
        if ( keyEvent->key() == downKey ) data = Decision(char(data) & ~(char(DOWN)));
    }

//    if(((e->type() == QEvent::KeyRelease) || (e->type() == QEvent::KeyPress)) && !(((QKeyEvent *)e)->isAutoRepeat())) qDebug().nospace() << "P" << id << "driver data is " << data;

    senddata();
}

//bool Keyboarddriver::eventFilter(QObject *target, QEvent *e){
//    Q_UNUSED(target);
//    bool handled = false;

//    if ((e->type() == QEvent::KeyPress) && !(((QKeyEvent *)e)->isAutoRepeat()))
//    {
//        QKeyEvent *keyEvent = (QKeyEvent *)e;

//        if ( keyEvent->key() == leftKey )
//        {
//            data = Decision(char(data) | char(LEFT));
//            handled = true;
//        }
//        if ( keyEvent->key() == rightKey )
//        {
//            data = Decision(char(data) | char(RIGHT));
//            handled = true;
//        }
//        if ( keyEvent->key() == upKey )
//        {
//            data = Decision(char(data) | char(UP));
//            handled = true;
//        }
//        if ( keyEvent->key() == downKey )
//        {
//            data = Decision(char(data) | char(DOWN));
//            handled = true;
//        }
//    }
//    if ( e->type() == QEvent::KeyRelease ){
//        QKeyEvent *keyEvent = (QKeyEvent *)e;
//        if ( keyEvent->key() == leftKey )
//        {
//            data = Decision(char(data) & ~(char(LEFT)));
//            handled = true;
//        }
//        if ( keyEvent->key() == rightKey )
//        {
//            data = Decision(char(data) & ~(char(RIGHT)));
//            handled = true;
//        }
//        if ( keyEvent->key() == upKey )
//        {
//            data = Decision(char(data) & ~(char(UP)));
//            handled = true;
//        }
//        if ( keyEvent->key() == downKey )
//        {
//            data = Decision(char(data) & ~(char(DOWN)));
//            handled = true;
//        }
//    }
//    if((e->type() == QEvent::KeyRelease) || ((e->type() == QEvent::KeyPress) && !(((QKeyEvent *)e)->isAutoRepeat()))) qDebug() << "data is" << data;
//    senddata();
//    return false;
//}




