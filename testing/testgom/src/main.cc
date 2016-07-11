#include <stdio.h>
#include "platform.h"
#include <xparameters.h> // add
#include <xiomodule.h>

void init_gpio();
void init_uart_interrupt();
void init_gpi_interrupt();

void rx_interrupt(void*);
void gpi_interrupt(void*);

XIOModule gpio;
XIOModule gpi_int;
XIOModule uart;

int main()
{
	init_platform();
	init_gpio();
	init_uart_interrupt();
	init_gpi_interrupt();

	while(true);

	return 0;
}

void rx_interrupt(void*){
	u32 data = 0;
	u8 byte = 0;
	XIOModule_Disable(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - '0') << 0);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - ((byte > '9') ? 'A':'0')) << 1);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - ((byte > '9') ? 'A':'0')) << 4);

	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	data |= ((byte - '0') << 4);

	XIOModule_Enable(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);

	XIOModule_DiscreteWrite(&gpio, 1, data);
}

void gpi_interrupt(void*){
	XIOModule_Disable(&gpi_int, XIN_IOMODULE_GPI_1_INTERRUPT_INTR);

	u8 buffer[5];
	u32 data = XIOModule_DiscreteRead(&gpio, 1);

	buffer[0] = (data & 1) + '0';
	data >>= 1;

	buffer[1] = (data & (((u8)1 << 4) - 1));
	buffer[1] += (buffer[1] > 9) ? 'A':'0';
	data >>= 4;

	buffer[2] = (data & (((u8)1 << 4) - 1));
	buffer[2] += (buffer[2] > 9) ? 'A':'0';
	data >>= 4;

	buffer[3] = (data & (((u8)1 << 2) - 1)) + '0';

	XIOModule_Enable(&gpi_int, XIN_IOMODULE_GPI_1_INTERRUPT_INTR);

	xil_printf("%s\r\n", &buffer);
}

void init_gpio(void){
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
}

void init_gpi_interrupt()
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
	XIOModule_Initialize(&uart, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler,
							  XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&uart); // start the GPO module

	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)rx_interrupt,
					NULL); // register timerTick() as our interrupt handler
	XIOModule_Enable(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts

}
