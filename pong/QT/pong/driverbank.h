#ifndef DRIVERBANK
#define DRIVERBANK
#include <QObject>
#include <vector>

class Driver;

class DriverBank : public QObject
{
    Q_OBJECT
public:
    bool eventFilter(QObject *target, QEvent *e);
    void addDriver(Driver*);
    void clearbank();
private:
    std::vector<Driver*> bank;
};

#endif // DRIVERBANK

