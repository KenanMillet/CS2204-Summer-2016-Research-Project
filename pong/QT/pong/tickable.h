#ifndef TICKABLE
#define TICKABLE

#include <qglobal.h>

class Tickable
{
public:
    virtual void onTick(qreal) = 0;
};

#endif // TICKABLE

