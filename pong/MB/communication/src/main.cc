#include <stdio.h>
#include "platform.h"
#include <xparameters.h>
#include <xiomodule.h>
#include "Command.h"

void init_gpio();
void init_uart_interrupt();
void init_gpi_interrupt();
void init_uart_polling();

void rx_interrupt(void*);
void gpi_interrupt(void*);

u32 pollUSB();
void sendUSB(u32);

XIOModule gpio;
XIOModule gpi_int;
XIOModule uart;

u32 gpoData;



int main()
{
	init_platform();
	init_gpio();
	init_uart_interrupt();
}

void init_gpio()
{
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
	gpoData = 0;
}

void init_gpi_interrupt()
//doesn't work with this serial comm code. Problem starts somewhere around Connect function.
{
	XIOModule_Initialize(&gpi_int, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler,
								  XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&gpi_int); // start the GPO module

	XIOModule_Connect(&gpi_int, XIN_IOMODULE_GPI_1_INTERRUPT_INTR, (XInterruptHandler)gpi_interrupt,
							NULL); // register timerTick() as our interrupt handler
	XIOModule_Enable(&gpi_int, XIN_IOMODULE_GPI_1_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts
}

void init_uart_interrupt()
{
	microblaze_enable_interrupts(); // enable global interrupts

	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Initialize(&uart, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	XIOModule_Uart_EnableInterrupt(&uart);

	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)rx_interrupt,
					NULL); // register timerTick() as our interrupt handler
	XIOModule_Start(&uart); // start the GPO module
}

void init_uart_polling()
{
}

void rx_interrupt(void*)
{
}

u32 pollUSB()
{

}

void sendUSB(u32)
{

}

void gpi_interrupt(void*)
{
//probably wouldn't work right even if we could initalize it properly
	sendUSB(XIOModule_DiscreteRead(&gpio, 1));
}
