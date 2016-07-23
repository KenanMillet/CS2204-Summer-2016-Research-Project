////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_7484_39
// /___/   /\     Timestamp : 07/20/2016 12:00:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Gomoku_MachinePlayer_V(myturn, 
                              valid, 
                              mycol, 
                              myrow, 
                              played);

    input myturn;
    input valid;
   output [3:0] mycol;
   output [3:0] myrow;
   output played;
   
	machinePlayer mp_instant(
    .p2sturn(myturn), 
    .p2row(myrow), 
    .p2column(mycol), 
    .p2played(played), 
    .valid(valid));
   
endmodule

module machinePlayer(p2row, p2column, p2played,
p2sturn, valid);
    input p2sturn, valid;
    output p2played;
    output[3:0] p2row, p2column;
    //local variables
    reg[3:0] row, column;
    //randomly generate position to play
	 initial begin
		row = 4'b0000;
		column = 4'b0000;
	 end
    //if p2sturn == 1, randomly generate position, send to playcheck
    always @(posedge p2sturn or negedge valid) begin
		 if (p2sturn == 1) begin
			  row <= (row == 14) ? 0 : row+1;
			  column = (row == 14) ? column+1 : column;
       end
	 end
	 
    //how to send p2played?
    assign p2row = row;
    assign p2column = column;
    assign p2played = p2sturn;
endmodule
