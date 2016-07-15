#ifndef VIRTUAL_PORT_H
#define VIRTUAL_PORT_H

class VirtualPort
{
public:
	VirtualPort(VirtualPort*);
protected:
	VirtualPort* link;
	u32 data;
private:
};
typedef VirtualPort VPort;

class VirtualInputPort : public VirtualPort
{

}
typedef VirtualInputPort VIPort;

class VirtualOutputPort : public VirtualPort
{

}
typedef VirtualOutputPort VOPort;

class VirtualBidirectionalPort : public VirtualInputPort, public VirtualOutputPort
{

}
typedef VirtualBidirectionalPort VBiPort;

#endif