module BaudGenerator_F_BR_AW_GI
#(
    parameter ClkFrequency          = 100000000, //100 MHz
    parameter BaudRate              = 9600, //9600 Bd
    parameter BaudAccumulatorWidth  = $clog2(BaudRate)-1, //16 Bits
    parameter BaudGeneratorInc      = ((BaudRate<<(BaudAccumulatorWidth-4))+(ClkFrequency>>5))/(ClkFrequency>>4)
)
(
    input       Clk,
    output reg  Tick
);

reg[BaudAccumulatorWidth:0] BaudAccumulator;

always@(posedge Clk) begin
    BaudAccumulator <= BaudAccumulator[BaudAccumulatorWidth-1:0] + BaudGeneratorInc;
end

assign Tick = BaudAccumulator[BaudAccumulatorWidth];

endmodule

module UartController
#(
    parameter ClkFrequency  = 100000000, //100 MHz
    parameter BaudRate      = 9600, //9600 Bd
    parameter IOWidth       = 64 //64 Bytes
)
(
    input               UartTx,
    input               UartRTS,
    input               Clk,
    output  reg         UartCTS,
    output  reg         UartRx,
    
    input   [7:0]       UpByte,
    input               VerifyByte,
    input               SendData,
    input               ReceiveByte,
    output  reg         UpFull,
    output  reg         DnEmpty,
    output  reg         Busy,
    output  reg[7:0]    DnByte
);

reg buadTick;

BaudGenerator_F_BR_AW_GI #(.ClkFrequency(ClkFrequency), .BaudRate(BaudRate)) bdgen(.Clk(Clk), .Tick(baudTick));

reg [7:0] obuffer [IOWidth-1:0];
reg [7:0] ibuffer [IOWidth-1:0];

reg [7:0] nullByte;

integer unsigned state, tFull;
integer unsigned iByte, oByte, rByte, tByte, rBit, tBit;

initial begin
    nullByte = 8'b00000000;

    for(oByte = 0; oByte < IOWidth; oByte=oByte+1) begin
        obuffer[oByte] = nullByte;
    end
    for(iByte = 0; iByte < IOWidth; iByte=iByte+1) begin
        ibuffer[oByte] = nullByte;
    end
    
    state = 0;
    tFull = 0;
    iByte = 0;
    oByte = 0;
    rByte = 0;
    tByte = 0;
    rBit = 0;
    tBit = 0;
    
    UartCTS = 1'b0;
    UartRx = 1'b0;
    
    UpFull = 1'b0;
    DnEmpty = 1'b0;
    Busy = 1'b0;
    DnByte = nullByte;
end

always@(posedge UartRTS) begin
    if(UartCTS == 1'b1) begin
        state = 1;
    end
    else if(tFull == 0) begin
        state = 2;
    end
    else begin
        state = 0;
    end
end

always@(posedge VerifyByte) begin
    if(UpFull == 1'b0) begin
        obuffer[oByte%IOWidth] <= UpByte;
        oByte <= oByte+1;
        UpFull = (oByte - rByte == IOWidth) ? 1'b1 : 1'b0;
    end
end

always@(posedge SendData) begin
    if(state != 2) begin
        UartCTS = 1'b1;
    end
end

always@(posedge ReceiveByte) begin
    if(DnEmpty == 1'b0) begin
        DnByte <= ibuffer[iByte%IOWidth];
        ibuffer[iByte%IOWidth] <= nullByte;
        iByte <= iByte+1;
        DnEmpty = (tByte - iByte == 0) ? 1'b1 : 1'b0;
    end
end

always@(posedge baudTick) begin
    case(state)
        0:  begin //Idle State
                UartCTS = 1'b0;
                UartRx = 1'b0;
                Busy = 1'b0;
            end
        1:  begin //Sending State
                UartCTS = 1'b1;
                Busy = 1'b1;
                UartRx <= obuffer[rByte%IOWidth][rBit];
                
                if(rBit == 7) begin
                    rBit = 0;
                    obuffer[rByte%IOWidth] <= nullByte;
                    rByte = rByte + 1;
                end
                else begin
                    rBit = rBit+1;
                end
                
                if(rByte == oByte) begin
                    state = 0;
                end
            end
        2:  begin //Recieving State
                Busy = 1'b1;
                UartCTS = 1'b1;
                ibuffer[tByte%IOWidth][tBit] <= UartTx;
                
                if(tBit == 7) begin
                    tBit = 0;
                    tByte = tByte + 1;
                end
                else begin
                    tBit = tBit+1;
                end
                
                tFull =(tByte - iByte == IOWidth) ? 1    : 0;
                
                if(UartRTS == 1'b0 || tFull == 1) begin
                    state = 0;
                end
            end
    endcase
end

endmodule