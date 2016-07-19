module UartController
#(
    parameter ClkFrequency  = 100000000, //100 MHz
    parameter BaudRate      = 9600, //9600 Bd
    parameter DataBits		= 8, //8 Bits
    parameter ParityBit		= 0, //No Parity Bit
    parameter StopBits		= 2, //2 Stop Bits
    parameter IOWidth       = 16 //16 Bytes
)
(
    input               		UartTx,
    input               		UartRTS,
    input               		Clk,
    
    output               		UartCTS,
    output  reg         		UartRx,
    
    input   	[DataBits-1:0]	UpByte,
    input               		VerifyByte,
    input               		SendData,
    input               		ReceiveByte,
    input						Cancel,
    input                       Reset,
    
    output               		UpFull,
    output               		UpEmpty,
    output                      DnFull,
    output                      DnEmpty,
    output              		Busy,
    output  reg	[0:DataBits-1]  DnByte
);

reg baudTick, sync;

BaudGenerator #(.ClkFrequency(ClkFrequency), .BaudRate(BaudRate)) bdgen(Clk, sync, baudTick);

reg [DataBits-1:0] obuffer [IOWidth-1:0];
reg [DataBits-1:0] ibuffer [IOWidth-1:0];

reg [DataBits-1:0] nullByte;

wire [2:0] ioState; //[0]: Sending | [1]: Able to Receive | [2]: Receiving

integer unsigned clkcounter;

reg uSend;
reg verifyTx, validTx;
reg iwrap, owrap;

integer unsigned iByte, oByte, rByte, tByte, rBit, tBit, i;

initial begin
    for(i = 0; i < DataBits; i=i+1) begin
        nullByte[i] = 1'b0;
    end

    for(i = 0; i < IOWidth; i=i+1) begin
        obuffer[i] = nullByte;
    end
    for(i = 0; i < IOWidth; i=i+1) begin
        ibuffer[i] = nullByte;
    end

    iByte <= 0;
    oByte <= 0;
    rByte <= 0;
    tByte <= 0;
    rBit <= -1;
    tBit <=  0;

    clkcounter <= 0;

    verifyTx <= 1'b0;
    validTx <= 1'b0;

    sync = 1'b0;
    
    UartRx <= 1'b0;

    uSend <= 1'b0;
    
    DnByte <= nullByte;

    i <= 0;
end

always@(posedge VerifyByte) begin //When the user wants to upload a byte to the module to later be sent
    if(!UpFull) begin
        obuffer[oByte] = UpByte;
        oByte <= oByte + 1; 
    end
end

always@(posedge SendData) begin //When the user wants to send the data
	uSend <= 1'b1;
end

always@(posedge Cancel) begin //When the user wants to cancel the sending of data
	uSend <= 1'b0;
end

always@(posedge ReceiveByte) begin //When the user wants to receive a byte
    if(!DnEmpty) begin
        DnByte = ibuffer[iByte];
        iByte <= iByte + 1; 
    end
end

always@(negedge UartTx) begin //Syncs the Baud rate and handles verification (See: always@(posedge Clk))
	sync <= UartCTS;
    verifyTx <= 1'b1;
end

always@(posedge UartTx) begin //See: always@(posedge Clk)
    verifyTx <= 1'b0;
end

always@(posedge baudTick) begin //Sending and Receiving of Data
	if(ioState[0]) begin //Sending State
		if(rBit == -1) begin //Start Bit
            UartRx <= 1'b0;      
        end
        else if(rBit < DataBits) begin //Data Bits
            UartRx <= obuffer[rByte][rBit];
        end
        else if(rBit < DataBits + (^ParityBit)) begin //Parity Bit
            UartRx <= (~(^(obuffer[rByte]))) ^ (ParityBit>>1);
        end
        else if(rBit < DataBits + (^ParityBit) + StopBits) begin //Stop Bit(s)
            UartRx <= 1'b0;
        end
        else begin
            rBit <= -2;
            rByte <= rByte + 1;
        end
        
        rBit <= rBit + 1;
	end
    else begin //Idle Sending State
        UartRx <= 1'b1;
    end

	if(ioState[1]) begin //Ready to Receive State
		if(ioState[2]) begin //Receiving State
			if(tBit < DataBits) begin
				ibuffer[tByte][tBit] <= UartTx;
			end
			else if(tBit < DataBits + (^ParityBit)) begin //Partiy Bit
				
			end
			else begin //Stop Bit(s)
                tBit <= -1;
                tByte <= tByte + 1;
                validTx <= 1'b0;
			end

            tBit <= tBit + 1;
		end
	end
end

always@(posedge Clk) begin //Used to verify that the star bit was low for at least half of a baud pulse
    if(!ioState[2]) begin
        if(verifyTx) begin
            clkcounter <= clkcounter + 1;
        end
        validTx <= (clkcounter >= ClkFrequency/(BaudRate/2)) ? 1'b1 : 1'b0;
    end
    else begin
        verifyTx <= 1'b0;
        validTx <= 1'b0;
    end
end

always@(posedge iwrap) begin //Used to allow the data in the i/o buffers to wrap around
    tByte <= tByte - IOWidth;
    iByte <= iByte - IOWidth;
end
always@(posedge owrap) begin
    rByte <= rByte - IOWidth;
    oByte <= oByte - IOWidth;
end

assign ioState[0] = UartRTS & uSend & ~UpEmpty;
assign ioState[1] = ~DnFull;
assign ioState[2] = ioState[1] & validTx;

assign iwrap = (tByte >= IOWidth && iByte >= IOWidth) ? 1'b1 : 1'b0;
assign owrap = (rByte >= IOWidth && oByte >= IOWidth) ? 1'b1 : 1'b0;

assign UartCTS = ioState[1];
assign Busy = ioState[0] | ioState[2];
assign UpFull  = (oByte - rByte == IOWidth) ? 1'b1 : 1'b0;
assign UpEmpty = (oByte - rByte == 0)       ? 1'b1 : 1'b0;
assign DnFull  = (tByte - iByte == IOWidth) ? 1'b1 : 1'b0;
assign DnEmpty = (tByte - iByte == 0)       ? 1'b1 : 1'b0;

endmodule