#include <stdio.h>
#include "platform.h"
#include <xparameters.h>
#include <xiomodule.h>
#include <math.h>

void init_gpio();
void init_uart_interrupt();

void rx_interrupt(void*);
void sendUSB(u32);



u16 argToInt(char[4]);

char args[6][4];
bool writegpo;

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
			XIOModule_Uart_DisableInterrupt(&uart);
			for(u8 i = 0; i < 4; ++i) XIOModule_DiscreteWrite(&gpio, i+1, gpoData[i]);
			sendUSB(XIOModule_DiscreteRead(&gpio, 1));
			XIOModule_Uart_EnableInterrupt(&uart);
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
	static u8 i(0);

	if(i == 0) for(u8 j = 0; j < 4; ++j) gpoData[j] = 0;

	u8 byte = XIOModule_RecvByte(STDIN_BASEADDRESS);
	if(byte == ' ') return;

	args[i/4][i%4] = byte;
	if((((i+1)/4)*4) == (i+1)) gpoData[i/8] |= argToInt(args[i/4]) << 10*((i/4)%2);
	i++;
	i %= 24;
	writegpo = (i==0);
	return;
}

void sendUSB(u32 data)
{
	xil_printf("%c\n", char(data));
}



u16 argToInt(char str[4])
{
	u16 result = 0;
	for(u8 i = 0; i < 4; ++i)
	{
		result += (str[i] - '0') * pow(10, i);
	}
	return result;
}
