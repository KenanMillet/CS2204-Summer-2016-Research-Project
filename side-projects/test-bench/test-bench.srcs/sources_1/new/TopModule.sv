`timescale 1ns / 1ps

module TopModule(
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
    UartController #(.ClkFrequency(100000000), .BaudRate(9600), .IOWidth(32)) uart
                    (.UartTx(UartTx), .UartRTS(UartRTS), .Clk(Clk), .UartCTS(UartCTS), .UartRx(UartRx),
                     .UpByte(UpByte), .VerifyByte(VerifyByte), .SendData(SendData), .ReceiveByte(ReceiveByte),
                     .UpFull(UpFull), .DnEmpty(DnEmpty), .Busy(Busy), .DnByte(DnByte));
endmodule
