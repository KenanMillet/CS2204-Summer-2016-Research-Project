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
    integer p2p;
    //randomly generate position to play
    //if p2sturn == 1, randomly generate position, send to playcheck
    always @* begin
    if (p2sturn == 1) begin
        row = $random;
        column = $random;
        end
    end
    //how to send p2played?
    assign p2row = row;
    assign p2column = column;
    always @* begin
    if (valid == 1) begin
        p2p = 1'b1;
        end
    end
    assign p2played = p2p;
endmodule
