////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2504_40
// /___/   /\     Timestamp : 08/01/2016 16:42:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_player(ballPosX, 
              ballPosY, 
              clk, 
              ctrlSel, 
              extIn, 
              paddlePosX, 
              paddlePosY, 
              reset, 
              extOut);

    input [9:0] ballPosX;
    input [9:0] ballPosY;
    input clk;
    input [1:0] ctrlSel;
    input [3:0] extIn;
    input [9:0] paddlePosX;
    input [9:0] paddlePosY;
    input reset;
   output [3:0] extOut;
   player instant_player(clk, reset, ctrlSel, extIn, ballPosX, ballPosY, paddlePosX, paddlePosY, extOut);
   
endmodule

module player(
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
