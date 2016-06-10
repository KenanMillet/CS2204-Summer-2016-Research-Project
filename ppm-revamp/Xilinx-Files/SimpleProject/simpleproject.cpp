/* Simple Project Summer Research 2016
 * Game Version 0.0
 */

 #include "platform.h"
 #include <stdio.h>
 #include <xiomodule.h>
 #include <iostream>
 using namespace std;

XIOModule module;

int main(){
	init_platform();
	init_gpio();
	uart_interrupt();

	while(1){
		decode_GPI_data();
		decode_UART_data();
	}

}
void decode_GPI_data(){ //reads from GPI and send to USB 
	(u8)gpiData = XIOModule_DiscreteRead($gpio, 1); // Reads Binary number in parallel from GPI1 line
	xil_printf("%x",gpiData); // sends to USB as one char in HEX since we do not need all 32 bits.
}

void decode_UART_data(){
	(u32)uartData = inbyte();
	XIOModule_DiscreteWrite($gpio, 1, uartData)
}

void uart_interrupt(){
	XIOModule_Initialize(&module, XPAR_IOMODULE_0_DEVICE_ID); // Initialize the GPO module

	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID); // register the interrupt handler

	XIOModule_Start(&module); // start the GPO module
	XIOModule_Connect(&module, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, decode_UART_data, NULL); //set the recieve function to run upon a uart_rx interrupt
	XIOModule_Enable(&module, XIN_IOMODULE_UART_RX_INTERRUPT_INTR); // enable the interrupt

	microblaze_enable_interrupts(); // enable global interrupts
}