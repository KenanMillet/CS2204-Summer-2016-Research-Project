////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2504_41
// /___/   /\     Timestamp : 08/01/2016 16:49:46
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_controlUnit(clk, 
                   player1Dec, 
                   player2Dec, 
                   reset, 
                   scored, 
                   start, 
                   win, 
                   ballReset, 
                   extIntReset, 
                   playerReset, 
                   tickEnable, 
                   tickReset);

    input clk;
    input [3:0] player1Dec;
    input [3:0] player2Dec;
    input reset;
    input scored;
    input start;
    input win;
   output ballReset;
   output extIntReset;
   output playerReset;
   output tickEnable;
   output tickReset;
   controlUnit instant_cu(scored, start, reset, win, clk, player1Dec, player2Dec, tickEnable, tickReset, playerReset, ballReset, extIntReset);
   
endmodule

module controlUnit(
    input scored, start, reset, win, clk,
    input[3:0] player1Dec, player2Dec,
    output reg tickEnable, tickReset, playerReset, ballReset, extIntReset
);
    parameter STATE0 = 3'b000, STATE1 = 3'b001, STATE2 = 3'b010, STATE3 = 3'b100, UNKNOWN = 4'b1111;
    reg[2:0] state;

    always @(posedge clk) begin
        if (~reset || win || scored) begin
            state <= STATE0;
        end
    end
    always @(posedge clk) begin
    case(state)
        STATE0: begin
                    if (start) begin
                        state <= STATE1;
                    end
                    tickReset <= 0;
                    playerReset <= 0;
                    ballReset <=0;
                    extIntReset <= 0;
                end
        STATE1: begin
                    if(player1Dec == UNKNOWN || player2Dec == UNKNOWN) begin
                        tickEnable <= 0;
                    end
                    else begin
                        tickEnable <= 1;
                        state <= STATE2;
                    end
                end
        STATE2: begin
                    tickEnable <= 0;
                    state <= STATE1;
                end
    endcase
    end
endmodule
