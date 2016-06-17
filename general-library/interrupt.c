#include <xuartlite_l.h>
#include <xintc_l.h>
#include <xparameters.h>

/* uartlite interrupt service routine */
void uart_int_handler(void *baseaddr_p) {
	char c;
	/* till uart FIFOs are empty */
	while (!XUartLite_IsReceiveEmpty(XPAR_AXI_UARTLITE_0_BASEADDR)) {
		/* read a character */
		c = XUartLite_RecvByte(XPAR_AXI_UARTLITE_0_BASEADDR);
		/* print character on hyperterminal (STDOUT) */
		xil_printf ("Character: %c \r\n", c);
	}
}

int main(void)
{

	/* Enable MicroBlaze exception */
   microblaze_enable_interrupts();

	/* Connect uart interrupt handler that will be called when an interrupt
	* for the uart occurs*/
	XIntc_RegisterHandler(XPAR_INTC_0_BASEADDR,XPAR_AXI_INTC_0_AXI_UARTLITE_0_INTERRUPT_INTR,(XInterruptHandler)uart_int_handler,(void *)XPAR_AXI_UARTLITE_0_BASEADDR);

	/* Start the interrupt controller */
	XIntc_MasterEnable(XPAR_INTC_0_BASEADDR);

	/* Enable uart interrupt in the interrupt controller */
	XIntc_EnableIntr(XPAR_INTC_0_BASEADDR, XPAR_AXI_UARTLITE_0_INTERRUPT_MASK);

	/* Enable Uartlite interrupt */
	XUartLite_EnableIntr(XPAR_AXI_UARTLITE_0_BASEADDR);

	/* Wait for interrupts to occur */
	while (1);
}