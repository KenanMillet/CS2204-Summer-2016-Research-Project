////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2504_39
// /___/   /\     Timestamp : 08/01/2016 16:42:26
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_tick(clk, 
            enable, 
            reset, 
            elapseTime, 
            tickOut);

    input clk;
    input enable;
    input reset;
   output [19:0] elapseTime;
   output tickOut;
   tick instant_tick(clk, enable, reset, tickOut, elapseTime);
   
endmodule

module tick(
    input clk,
    input enable, reset,
    output reg tickOut,
    output reg[19:0] elapseTime
);
    reg[19:0] counter = 0;
    
    always @(posedge clk) begin
        if (~enable) begin
            counter <= counter + 1;
            tickOut <= 0;
        end
        else begin
            elapseTime = counter;
            tickOut <= 1;
            counter <= 0;
        end
    end
endmodule