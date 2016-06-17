#include "platform.h"
#include <xiomodule.h>
#include <xparameters.h>
#include <xiomodule_l.h>
#include <stdlib.h>        //strtol
#include <string>
using namespace std;

XIOModule uart;

void init_uart_interrupt();
void test(void*);

void init_uart_interrupt(){
	XIOModule_Initialize(&uart, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&uart); // start the GPO module
	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)test, NULL); //set the receive function to run upon a uart_rx interrupt
	XIOModule_Enable(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts
}

void test(void*){
	string buffer = "";
	while(XIOModule_IsReceiveEmpty(STDIN_BASEADDRESS) != 0) buffer += XIOModule_RecvByte(STDIN_BASEADDRESS);
}

int main()
{
	return 0;
}
