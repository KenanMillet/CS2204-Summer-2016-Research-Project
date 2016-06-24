/* Simple Project Summer Research 2016
 * Game Version 0.0
 */

#include "platform.h"
#include <xiomodule.h>
#include <xparameters.h>
#include <xiomodule_l.h>
#include <stdlib.h>        //strtol
//#include <stdio.h>
using namespace std;

XIOModule uart;
XIOModule gpio;

char inbyte(void);
void init_uart_interrupt();
void init_gpio();
void serialize_GPI_data_send();
void deserialize_UART_data_send(void*);
void clear_GPO();
void test(void*);

u32 output;

void init_uart_interrupt(){
	XIOModule_Initialize(&uart, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&uart); // start the GPO module
	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)deserialize_UART_data_send, NULL); //set the receive function to run upon a uart_rx interrupt
//	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)test, NULL); //set the receive function to run upon a uart_rx interrupt
	XIOModule_Enable(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts
}

void init_gpio(){
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
}

void serialize_GPI_data_send(){ //reads from GPI and send to USB 
	u8 gpiData = XIOModule_DiscreteRead(&gpio, 1); // Reads Binary number in parallel from GPI1 line
	xil_printf("%x\r\n",gpiData); // sends to USB as one char in HEX since we do not need all 32 bits.
}

void deserialize_UART_data_send(void*){

	u8 buffer[2];

	for(int i = 0; i < 2; ++i) buffer[i] = XIOModule_RecvByte(STDIN_BASEADDRESS);

	const char* start = (const char*)(&buffer);
	char* end = (char*)(&buffer);
	u32 data = 0;

	data |= strtol(start++, &(++end), 16);
	if(data >> 1 == 0)
	{
		data <<= 4;
		data |= strtol(start++, &(++end), 16);
	}
	else data |= strtol(start++, &(++end), 16);

	output = data;
}

void clear_GPO()
{
	u32 data = 0;
	XIOModule_DiscreteWrite(&gpio, 1, data);
}

void test(void*)
{
	u8 buffer[32];
	for(int i = 0; i < 32 && XIOModule_IsReceiveEmpty(STDIN_BASEADDRESS); ++i) buffer[i] = XIOModule_RecvByte(STDIN_BASEADDRESS);
	xil_printf("%s\r\n", &buffer);
}

int main(){
	init_platform();
	init_gpio();
	init_uart_interrupt();

	while(1){
		XIOModule_DiscreteWrite(&gpio, 1, output);
		XIOModule_DiscreteWrite(&gpio, 1, output & 0x0F);
		serialize_GPI_data_send();
	}
}
