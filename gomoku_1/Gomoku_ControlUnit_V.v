////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_7484_37
// /___/   /\     Timestamp : 07/20/2016 11:53:51
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Gomoku_ControlUnit_V(clk, 
                            enable, 
                            p1played, 
                            p2canplay, 
                            p2played, 
                            reset, 
                            valid, 
                            check, 
                            invalidplay, 
                            player, 
                            p1sturn, 
                            p2sturn);

    input clk;
    input enable;
    input p1played;
    input p2canplay;
    input p2played;
    input reset;
    input valid;
   output check;
   output invalidplay;
   output [1:0] player;
   output p1sturn;
   output p2sturn;
   
	controlUnit cu_instant(
	 .clk(clk),
    .p2canplay(p2canplay), 
    .p1played(p1played), 
    .p2played(p2played), 
    .valid(valid), 
    .player(player), 
    .check(check), 
    .p2sturn(p2sturn),
    .p1sturn(p1sturn),
    .invalidPlay(invalidPlay),
	 .enable(enable),
	 .reset(reset));
   
endmodule

module controlUnit(clk, check, player, p2sturn, p1sturn, invalidPlay,
p1played, p2played, valid, p2canplay, reset, enable);
    input clk, p1played, p2played, p2canplay, reset, enable, valid;
    output reg check, p2sturn, p1sturn, invalidPlay;
    output reg[1:0] player;
    //local variables
    parameter STATE1 = 3'b001, STATE2 = 3'b010, STATE3 = 3'b100;
    reg[2:0] state;
    //enable check - if high, all outputs become 0
    //FSM
    always @(posedge clk or negedge reset) begin
		state <= (~reset) ? STATE1 : state;
		case(state)
            STATE1: if(p1played) begin //p1played always block outside to risingEdge
                        player = 2'b01;
                        check = 1'b1;
                        if(valid==0 && player == 2'b01) begin
                            p1sturn = 1'b0;
                            state <= STATE2;
                        end else begin
                            player = 2'b01;
                            invalidPlay = 1;
                            state <= STATE1;
                        end
                    end else begin
                        p1sturn = 1'b1;
                        state <= STATE1;
                    end
            STATE2: if(p2canplay==1) begin
                        if(p2played==0) begin 
                            player = 2'b10;
                            p2sturn = 1'b1;
                            state <= STATE2;
                            end else begin
                                player = 2'b10;
                                check = 1'b1;
                                state <= STATE3;
                                end
                            end
                     else if (valid==0 && player == 2'b01) begin
                        state <= STATE2;
                        end
            STATE3: if(valid==0 && player == 2'b10) begin
                        p2sturn = 1'b0;
                        state <= STATE1;
                     end else begin
                        player = 2'b10;
                        invalidPlay = 1;
                        state <= STATE2;
                        end
        endcase
    end
endmodule
