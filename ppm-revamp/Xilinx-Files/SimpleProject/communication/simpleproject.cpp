/* Simple Project Summer Research 2016
 * Game Version 0.0
 */

 #include "platform.h"
 #include <stdio.h>
 #include <stdlib.h>	//strtol
 #include <xiomodule.h>
 #include <xparameters.h>
 using namespace std;

XIOModule uart;
XIOModule gpio;

void init_uart_interrupt(){
	XIOModule_Initialize(&uart, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&uart); // start the GPO module
	XIOModule_Connect(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, deserialize_UART_data_send, NULL); //set the receive function to run upon a uart_rx interrupt
	XIOModule_Enable(&uart, XIN_IOMODULE_UART_RX_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts
}

void init_gpio(){
	XIOModule_Initialize(&gpio, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(&gpio);
}

void serialize_GPI_data_send(){ //reads from GPI and send to USB 
	(u8)gpiData = XIOModule_DiscreteRead(&gpio, 1); // Reads Binary number in parallel from GPI1 line
	xil_printf("%x",gpiData); // sends to USB as one char in HEX since we do not need all 32 bits.
}

void deserialize_UART_data_send(){
	u8 *dataBuffer = new u8[3];
	u8 *end = dataBuffer;
	
	u32 data = 0;
	
	dataBuffer[0] = inbyte();
	dataBuffer[1] = inbyte();
	dataBuffer[2] = '\0';
	
	data |= strtol(dataBuffer, &(++end), 16);
	if(data >> 1 == 0)
	{
		data <<= 4;
		data |= strtol(dataBuffer+1, &(++end), 16);
	}
	else data |= strtol(dataBuffer+1, &(++end), 16) << 4;
	
	XIOModule_DiscreteWrite(&gpio, 1, data);
}

//u32 data = inbyte();
//dwrite(&gio, 1, data);

int main(){
	init_platform();
	init_gpio();
	init_uart_interrupt();

	while(1){
		serialize_GPI_data_send();
	}

}