////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_39976_30
// /___/   /\     Timestamp : 08/10/2016 12:01:10
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module player(ballX, 
              ballY, 
              clk, 
              ctrlSel, 
              extIn, 
              paddleX, 
              paddleY, 
              reset, 
              extOut);

    input [9:0] ballX;
    input [9:0] ballY;
    input clk;
    input [1:0] ctrlSel;
    input [3:0] extIn;
    input [9:0] paddleX;
    input [9:0] paddleY;
    input reset;
   output [3:0] extOut;
   
   player_v player_instance(clk, reset, ctrlSel, extIn, ballX, ballY, paddleX, paddleY, extOut);
	
endmodule



module player_v(
    input clk,
    input reset,
    input[1:0] ctrlSel,
    input[3:0] extIn,
    input[9:0] ballPosX, ballPosY, paddlePosX, paddlePosY,
    output reg[3:0] extOut
);

    wire[3:0] ipcOut, bpcOut;
    
    IPC ipc_inst(clk, reset, extIn,
    ipcOut);
    
    BPC bpc_inst(clk, reset, ctrlSel, ballPosX, ballPosY, paddlePosX, paddlePosY,
    bpcOut);
    //initial value before positive edge of clock to be undecided
    initial begin
        extOut <= 4'b1111;
    end
    //controller selection for either IPC or BPC
    always @(posedge clk) begin
        if(ctrlSel == 2'b00 || ctrlSel == 2'b11) begin
            extOut <= 4'b1111;
        end
        else if (ctrlSel == 2'b01) begin
            extOut <= ipcOut;
        end
        else begin
            extOut <= bpcOut;
        end
    end
endmodule

module IPC(
    input clk,
    input reset,
    input[3:0] extIn,
    output reg[3:0] extOut    
);
    always @(posedge clk) begin
        extOut <= extIn;
    end
endmodule

module BPC(
    input clk,
    input reset,
    input[1:0] ctrlSel,
    input[9:0] ballPosX, ballPosY, paddlePosX, paddlePosY,
    output reg[3:0] extOut
);
    localparam NONE = 4'b0000;
    localparam UP = 4'b0001;
    localparam DOWN = 4'b0010;
    localparam LEFT = 4'b0100;
    localparam RIGHT = 4'b1000;
  
    //make decision of paddle position according to ball position
    always @(posedge clk) begin
         if (paddlePosX < ballPosX) begin
            extOut <= RIGHT;
         end
         else if (paddlePosX > ballPosX) begin
            extOut <= LEFT;
         end            
         else begin
            extOut <= NONE;
         end
    end
endmodule