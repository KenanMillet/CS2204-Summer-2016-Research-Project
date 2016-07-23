////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_7484_40
// /___/   /\     Timestamp : 07/20/2016 12:01:28
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Gomoku_IO_V(confirmIn, 
                   player, 
                   p1sturn, 
                   p2col, 
                   p2row, 
                   USBp1col, 
                   USBp1played, 
                   USBp1row, 
                   USBp2canplay, 
                   p1col, 
                   p1played, 
                   p1row, 
                   p2canplay, 
                   USBp1sturn, 
                   USBp2col, 
                   USBp2row,
						 confirmOut);

    input confirmIn;
    input [1:0] player;
    input p1sturn;
    input [3:0] p2col;
    input [3:0] p2row;
    input [3:0] USBp1col;
    input USBp1played;
    input [3:0] USBp1row;
    input USBp2canplay;
   output [3:0] p1col;
   output p1played;
   output [3:0] p1row;
   output p2canplay;
   output USBp1sturn;
   output [3:0] USBp2col;
   output [3:0] USBp2row;
	output confirmOut;
   
	i_o io_instant(
    .p2canplay(p2canplay), 
    .p1played(p1played), 
    .p1row(p1row), 
    .p1column(p1col), 
    .USBp1row(USBp1row), 
    .USBp1column(USBp1col), 
    .USBp1played(USBp1played),
    .USBp2canplay(USBp2canplay),
    .p2row(p2row),
    .p2column(p2col),
    .confirmIn(confirmIn),
    .player(player),
    .p1sturn(p1sturn),
    .USBp2row(USBp2row),
    .USBp2column(USBp2col),
    .USBp1sturn(USBp1sturn),
	 .confirmOut(confirmOut));
	 
	 
   
endmodule

module i_o(USBp1sturn, USBp2row, USBp2column, p1played, p1row, p1column, p2canplay, 
USBp2canplay, USBp1row, USBp1column, USBp1played, p2row, p2column, confirmIn, player, p1sturn,
confirmOut);
    input p1sturn, confirmIn, USBp2canplay, USBp1played;
    input[3:0] p2row, p2column, USBp1row, USBp1column;
    input[1:0] player;
    output[3:0] p1row, p1column, USBp2row, USBp2column;
    output USBp1sturn, p2canplay, p1played, confirmOut;
	 
	 assign confirmOut = confirmIn;
    assign p1row = USBp1row;
    assign p1column = USBp1column;
    assign p2canplay = USBp2canplay;
    assign p1played = USBp1played;
    assign USBp2row = (player == 2'b01 && confirmIn == 1'b1) ? USBp1row : p2row;
    assign USBp2column = (player == 2'b01 && confirmIn == 1'b1) ? USBp1column : p2column;
    assign USBp1sturn = p1sturn;
    //module to assign USB inputs from microblaze code to output to Verilog modules
endmodule
