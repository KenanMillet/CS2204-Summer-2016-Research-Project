#ifndef TICK_H
#define TICK_H
#include <QElapsedTimer>
#include <QVector>
#include <vector>

class Tickable;
class DataHub;


class tick{
    typedef void (*tickpointer)(void*, qreal);
public:
    tick();
    QElapsedTimer timer;
    
    qint64 timeelasped();
    void registertick(void*, tickpointer);
    void registertick(Tickable*);
    void operator()();
    void operator()(int);
    void reset();
    DataHub* dh;

private:
    qint64 prevTime;
    std::vector<Tickable*> tickablevector;
    std::vector<tickpointer> tickvector;
    std::vector<void*> instvector;




};





#endif // TICK_H

