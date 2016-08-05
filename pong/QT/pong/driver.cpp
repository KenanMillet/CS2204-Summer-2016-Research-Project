#include "driver.h"
#include "datahub.h"

Driver::Driver(ExtInterface* interface, unsigned int id): Extpointer(interface), data(NONE), parent(this), id(id){
}

void Driver::senddata(){
    Extpointer->sendtoplayer(this, data);
}
