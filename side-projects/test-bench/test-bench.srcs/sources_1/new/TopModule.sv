module TopModule(
    input               Clk,
    
    input   [7:0]       UpByte_A,
    input               Verify_A,
    input               Send_A,
    input               Recv_A,
    input               Cancel_A,
    
    input   [7:0]       UpByte_B,
    input               Verify_B,
    input               Send_B,
    input               Recv_B,
    input               Cancel_B,
    
    output  reg         UpFull_A,
    output  reg         UpEmpty_A,
    output  reg         DnFull_A,
    output  reg         DnEmpty_A,
    output  reg         Busy_A,
    output  reg[7:0]    DnByte_A,
    
    output  reg         UpFull_B,
    output  reg         UpEmpty_B,
    output  reg         DnFull_B,
    output  reg         DnEmpty_B,
    output  reg         Busy_B,
    output  reg[7:0]    DnByte_B
    );
    reg AdataB, BdataA, AshakeB, BshakeA;
    
    UartController #(100000000, 10000000)
                        usb_A(BdataA, BshakeA, Clk, AshakeB, AdataB,
                              UpByte_A, Verify_A, Send_A, Recv_A, Cancel_A,
                              UpFull_A, UpEmpty_A, DnFull_A, DnEmpty_A, Busy_A, DnByte_A);
                              
    UartController #(100000000, 10000000)
                        usb_B(AdataB, AshakeB, Clk, BshakeA, BdataA,
                              UpByte_B, Verify_B, Send_B, Recv_B, Cancel_B,
                              UpFull_B, UpEmpty_B, DnFull_B, DnEmpty_B, Busy_B, DnByte_B);

endmodule
