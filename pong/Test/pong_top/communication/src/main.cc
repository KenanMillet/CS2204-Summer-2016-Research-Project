#include <stdio.h>
#include "platform.h"
#include <xparameters.h>
#include <xiomodule.h>
#include <math.h>

void init_gpio();
void init_uart_interrupt();

void rx_interrupt(void*);
void pollUSB();
void pollUSBcompressed();
void sendUSB(u32);
void sendUSBDebug(u32);



u16 argToInt(char[4]);

bool writegpo = false;

XIOModule gpio;
XIOModule uart;

u32 gpoData[4];

int main()
{
	init_platform();
	init_gpio();
	init_uart_interrupt();


	while(true)
	{
		if(writegpo)
		{
			writegpo = false;
			XIOModule_Uart_DisableInterrupt(&uart);
			for(u8 i = 0; i < 4; ++i) XIOModule_DiscreteWrite(&gpio, i+1, gpoData[i]);
			XIOModule_Uart_EnableInterrupt(&uart);
			sendUSB(XIOModule_DiscreteRead(&gpio, 1));
		}
	}
	return 0;
}

void init_gpio()
{
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
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


void rx_interrupt(void*)
{
	//Choose only one function to be uncommented
	
	//pollUSB();
	pollUSBcompressed();
}

void pollUSB()
{
	static u8 i(0);
	static char args[6][4];

	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	if(byte == ' ') return;

	args[i/4][i%4] = byte;

	switch(i)
	{
	case 0:
		for(u8 j = 0; j < 4; ++j) gpoData[j] = 0;
		break;
	case 3:
		gpoData[0] |= argToInt(args[0]) << 0;
		break;
	case 7:
		gpoData[0] |= argToInt(args[1]) << 10;
		break;
	case 11:
		gpoData[1] |= argToInt(args[2]) << 0;
		break;
	case 15:
		gpoData[1] |= argToInt(args[3]) << 10;
		break;
	case 19:
		gpoData[2] |= argToInt(args[4]) << 0;
		break;
	case 23:
		gpoData[2] |= argToInt(args[5]) << 10;
		break;
	}

	i++;

	if(i == 24)
	{
		i = 0;
		writegpo = true;
	}
	return;
}

void pollUSBcompressed()
{
	static u8 i(0);
	
	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	
	switch(i)
	{
	case 0:
		for(u8 j = 0; j < 4; ++j) gpoData[j] = 0;
		gpoData[0] |= u32(byte); //bx(7:0)
		break;
	case 1:
		gpoData[0] |= u32(byte) << 8; //bx(9:8), by(5:0)
		break;
	case 2:
		gpoData[0] |= (u32((byte << 4) >> 4) << 16);  //by(9:6)
		gpoData[1] |= u32(byte) >> 4; //p1x(3:0)
		break;
	case 3:
		gpoData[1] |= u32(byte) << 4; //p1x(9:4), p1y(1:0)
		break;
	case 4:
		gpoData[1] |= u32(byte) << 12; //p1y(9:2)
		break;
	case 5:
		gpoData[2] |= u32(byte); //p2x(7:0)
		break;
	case 6:
		gpoData[2] |= u32(byte) << 8; //p2x(9:8), p2y(5:0)
		break;
	case 7:
		gpoData[2] |= (u32((byte << 4) >> 4) << 16);  //by(9:6)
		break;
	}
	
	i++;
	
	if(i == 8)
	{
		i = 0;
		writegpo = true;
	}
	return;
}

void sendUSB(u32 data)
{
	xil_printf("%c", data);
	xil_printf("\n");
}

void sendUSBDebug(u32 data)
{
	if(data < 15)
	{
		if(data == 0) xil_printf("NONE");

		if(((data << 31) >> 31) == 1) xil_printf("UP ");
		if(((data << 30) >> 31) == 1) xil_printf("DOWN ");
		if(((data << 29) >> 31) == 1) xil_printf("LEFT");
		if(((data << 28) >> 31) == 1) xil_printf("RIGHT");
	}
	else
	{
		xil_printf("UNKNOWN");
	}
	xil_printf("(%d)", data);
	xil_printf("\n");
}



u16 argToInt(char str[4])
{
	u16 result = 0;
	for(u8 i = 0; i < 4; ++i)
	{
		result += (str[3-i] - '0') * pow(10, i);
	}
	return result;
}