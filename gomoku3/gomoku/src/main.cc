#include <stdio.h>
#include "platform.h"
#include <xparameters.h>
#include <xiomodule.h>

void init_gpio();
void init_uart_interrupt();
void init_gpi_interrupt();
void init_uart_polling();
void init_uart_operation();

void rx_interrupt(void*);
void gpi_interrupt(void*);

void pollUSB();
void sendUSB(u32);

void getPlayer();
void getXLoc();
void getYLoc();
void getWin();

void (*uartOp)(void);

XIOModule gpio;
XIOModule gpi_int;
XIOModule uart;

u32 gpoData;

const u32 gpxConfirm = u32(1 << 11);
const u32 gpxSend = u32(1 << 10);
const u32 gpxClear = 0;

int main()
{
	u32 USBout;
	init_platform();
	init_gpio();
	init_uart_interrupt();
	//init_gpi_interrupt();


	while(1)
	{
		XIOModule_DiscreteWrite(&gpio, 1, gpoData);

		do
		{
			USBout = XIOModule_DiscreteRead(&gpio, 1);
			//xil_printf("Waiting for send signal to begin...\r\n");
		}
		while((USBout & gpxSend) != gpxSend);

		XIOModule_Uart_DisableInterrupt(&uart);
		XIOModule_DiscreteWrite(&gpio, 1, gpoData | gpxConfirm);
		XIOModule_Uart_EnableInterrupt(&uart);

		while((USBout & gpxSend) == gpxSend)
		{
			USBout = XIOModule_DiscreteRead(&gpio, 1);
			//xil_printf("Waiting for send signal to end...\r\n");
		}
		sendUSB(USBout);
	}

	return 0;
}

void sendUSB(u32 data)
{
	xil_printf("%X", (data << 31) >> 31);
	xil_printf("%X", (data << 27) >> 28);
	xil_printf("%X", (data << 23) >> 28);
	xil_printf("%X\r\n", (data << 22) >> 31);
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
	init_uart_operation();
}

void init_uart_polling()
{
	init_uart_operation();
}

void init_uart_operation()
{
	uartOp = &getPlayer;
}

void rx_interrupt(void*)
{
	uartOp();
//	u32 data = 0;
//	u8 byte = 0;
//
//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
//	data |= ((byte - '0') << 0);
//
//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
//	data |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 1);
//
//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
//	data |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 5);
//
//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
//	data |= ((byte - '0') << 9);
//
//	XIOModule_DiscreteWrite(&gpio, 1, data);
}

void pollUSB()
{
	uartOp();
	//	u32 data = 0;
	//	u8 byte = 0;
	//
	//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	//	data |= ((byte - '0') << 0);
	//
	//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	//	data |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 1);
	//
	//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	//	data |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 5);
	//
	//	byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	//	data |= ((byte - '0') << 9);
	//
	//	XIOModule_DiscreteWrite(&gpio, 1, data);
}

void getPlayer()
{
	XIOModule_Uart_DisableInterrupt(&uart);
	gpoData = 0;
	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	gpoData |= ((byte - '0') << 0);
	uartOp = &getXLoc;
	XIOModule_Uart_EnableInterrupt(&uart);
}

void getXLoc()
{
	XIOModule_Uart_DisableInterrupt(&uart);
	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	gpoData |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 1);
	uartOp = &getYLoc;
	XIOModule_Uart_EnableInterrupt(&uart);
}

void getYLoc()
{
	XIOModule_Uart_DisableInterrupt(&uart);
	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	gpoData |= ((byte - ((byte > '9') ? 'A'-10:'0')) << 5);
	uartOp = &getWin;
	XIOModule_Uart_EnableInterrupt(&uart);
}

void getWin()
{
	XIOModule_Uart_DisableInterrupt(&uart);
	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	u32 gpiData = 0;
	gpoData |= ((byte - '0') << 9);
	XIOModule_DiscreteWrite(&gpio, 1, gpoData | gpxSend);
	do
	{
		gpiData = XIOModule_DiscreteRead(&gpio, 1);
	} while((gpiData & gpxConfirm) != gpxConfirm);
	XIOModule_DiscreteWrite(&gpio, 1, gpoData);
	uartOp = &getPlayer;
	XIOModule_Uart_EnableInterrupt(&uart);
}




void gpi_interrupt(void*)
{
//probably wouldn't work right even if we could initalize it properly
	sendUSB(XIOModule_DiscreteRead(&gpio, 1));
}
