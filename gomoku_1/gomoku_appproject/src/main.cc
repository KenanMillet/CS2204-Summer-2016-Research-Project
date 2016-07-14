#include <stdio.h>
#include "platform.h"
#include <xparameters.h>
#include <xiomodule.h>

void init_gpio();
void init_uart_interrupt();
void init_gpi_interrupt();

void rx_interrupt(void*);
void gpi_interrupt(void*);

void sendUSB(u32);


XIOModule gpio;
XIOModule gpi_int;
XIOModule uart;

int main()
{
	u32 gpiOld, gpiNew;
	init_platform();
	init_gpio();
	//init_uart_interrupt();
	//init_gpi_interrupt();

	while(1)
	{
		rx_interrupt(NULL); //Doing this in polled mode instead of actually using interrupts because I am frustrated and gave up on stupid Xilinx software that doesn't work.
		gpiNew = XIOModule_DiscreteRead(&gpio, 1);
		if(gpiOld != gpiNew)
		{
			gpiOld = gpiNew;
			sendUSB(gpiNew);
		}
	}

	return 0;
}

void sendUSB(u32 data){
	xil_printf("%x", (data << 31) >> 31);
	xil_printf("%x", (data << 27) >> 28);
	xil_printf("%x", (data << 23) >> 28);
	xil_printf("%x\r\n", (data << 21) >> 30);
}

void init_gpio(void){
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
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

void init_uart_interrupt(void){
//somehow manages to break while loops and probably doesn't return properly. Apparently the drivers for interrupt based io in XIOModule is garbage
	microblaze_enable_interrupts(); // enable global interrupts

	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Initialize(&uart, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	XIOModule_Uart_EnableInterrupt(&uart);

	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)rx_interrupt,
					NULL); // register timerTick() as our interrupt handler
	XIOModule_Start(&uart); // start the GPO module
}

void rx_interrupt(void*){
	u32 data = 0;
	u8 byte = 0;

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - '0') << 0);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 1);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 5);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - '0') << 9);

	XIOModule_DiscreteWrite(&gpio, 1, data);
}

void gpi_interrupt(void*){
//probably wouldn't work right even if we could initalize it properly
	sendUSB(XIOModule_DiscreteRead(&gpio, 1));
}
