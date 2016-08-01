////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2504_42
// /___/   /\     Timestamp : 08/01/2016 16:50:45
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_extInterface(clk, 
                    extIn1, 
                    extIn2, 
                    p1decision, 
                    p2decision, 
                    reset, 
                    extOut1, 
                    extOut2, 
                    player1Dec, 
                    player2Dec);

    input clk;
    input [3:0] extIn1;
    input [3:0] extIn2;
    input [3:0] p1decision;
    input [3:0] p2decision;
    input reset;
   output extOut1;
   output extOut2;
   output player1Dec;
   output player2Dec;
   extInterface instant_extInt(reset, clk, p1decision, p2decision, extIn1, extIn2, player1Dec, player2Dec, extOut1, extOut2);
   
endmodule

module extInterface(
    input reset, clk,
    input[3:0] p1decision, p2decision, extIn1, extIn2,
    output reg player1Dec, player2Dec, extOut1, extOut2
);
    localparam UNKNOWN = 4'b1111;
    always @(posedge clk) begin
        if (~reset) begin
            player1Dec <= UNKNOWN;
            player2Dec <= UNKNOWN;
        end
        else begin
            player1Dec <= p1decision;
            player2Dec <= p2decision;
        end
        extOut1 <= extIn1;
        extOut2 <= extIn2;
    end
endmodule