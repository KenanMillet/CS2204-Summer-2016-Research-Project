#include "driverbank.h"
#include "driver.h"

using namespace std;

bool DriverBank::eventFilter(QObject *target, QEvent *e)
{
    Q_UNUSED(target);

    for(Driver* d : bank) d->handle(e);

    return false;
}

void DriverBank::addDriver(Driver* d)
{
    bank.push_back(d);
}
