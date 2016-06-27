#ifndef IO_H_
#define IO_H_

#include <string>
#include <functional>
#include <xiomodule.h>

class USB
{
public:
	USB(void (*)(void*) = &doNothing, void (*)(void*) = &doNothing);

	void onDataIn(void (*)(void*) = &doNothing);
	void onDataOut(void (*)(void*) = &doNothing);

	void enableInputInterrupts();
	void enableOutputInterrupts();
	void enableInterrupts();
	void disableInputInterrupts();
	void disableOutputInterrupts();
	void disableInterrupts();

	void write(const std::string&);
	std::string read();
	USB& operator<<(const std::string&);
	USB& operator>>(std::string&);

private:
	XIOModule* module;
	std::string buffer;

	void initialize();
	static void doNothing(void*);
};


#endif
