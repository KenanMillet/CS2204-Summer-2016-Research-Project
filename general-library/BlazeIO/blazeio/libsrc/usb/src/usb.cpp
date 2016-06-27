#include "usb.h"
#include <xparameters.h>

USB::USB(void (*dataInInterrupt)(void*), void (*dataOutInterrupt)(void*))
	: module(new XIOModule), buffer("")
{
	initialize();
	onDataIn(dataInInterrupt);
	onDataOut(dataOutInterrupt);
	enableInterrupts();
}

void USB::onDataIn(void (*function)(void*))
{
	XIOModule_Disconnect(module, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);
	XIOModule_Connect(module, XIN_IOMODULE_UART_RX_INTERRUPT_INTR, (XInterruptHandler)function, NULL);
}

void USB::onDataOut(void (*function)(void*))
{
	XIOModule_Disconnect(module, XIN_IOMODULE_UART_TX_INTERRUPT_INTR);
	XIOModule_Connect(module, XIN_IOMODULE_UART_TX_INTERRUPT_INTR, (XInterruptHandler)function, NULL);
}

void USB::enableInputInterrupts()
{
	XIOModule_Enable(module, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);
}

void USB::enableOutputInterrupts()
{
	XIOModule_Enable(module, XIN_IOMODULE_UART_TX_INTERRUPT_INTR);
}

void USB::enableInterrupts()
{
	enableOutputInterrupts();
	enableInputInterrupts();
}

void USB::disableInputInterrupts()
{
	XIOModule_Disable(module, XIN_IOMODULE_UART_RX_INTERRUPT_INTR);
}

void USB::disableOutputInterrupts()
{
	XIOModule_Disable(module, XIN_IOMODULE_UART_TX_INTERRUPT_INTR);
}

void USB::disableInterrupts()
{
	disableOutputInterrupts();
	disableInputInterrupts();
}



void USB::write(const std::string& data)
{
	xil_printf(data.c_str());
}

std::string USB::read()
{
	std::string buf;
	while(XIOModule_IsReceiveEmpty(STDIN_BASEADDRESS) == 0) buf += XIOModule_RecvByte(STDIN_BASEADDRESS);
	return buf;
}

USB& USB::operator<<(const std::string& data)
{
	write(data);
	return *this;
}

USB& USB::operator>>(std::string& container)
{
	container = read();
	return *this;
}


void USB::initialize()
{
	XIOModule_Initialize(module, XPAR_IOMODULE_0_DEVICE_ID);
	microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID);
	XIOModule_Start(module);

	microblaze_enable_interrupts();
}

void USB::doNothing(void*)
{

}
