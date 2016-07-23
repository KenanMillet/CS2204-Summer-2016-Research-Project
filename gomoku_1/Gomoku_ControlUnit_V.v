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
                            start, 
                            p1played, 
                            p2canplay, 
                            p2played, 
                            reset, 
                            valid, 
                            check, 
                            player, 
                            p1sturn, 
                            p2sturn,
									 confirm);

    input clk;
    input start;
    input p1played;
    input p2canplay;
    input p2played;
    input reset;
    input valid;
   output check;
   output [1:0] player;
   output p1sturn;
   output p2sturn;
	output confirm;
   
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
	 .start(start),
	 .reset(reset),
	 .confirm(confirm));
   
endmodule

module controlUnit(clk, check, player, p2sturn, p1sturn,
p1played, p2played, valid, p2canplay, reset, start, confirm);
    input clk, p1played, p2played, p2canplay, reset, start, valid;
    output reg check, p2sturn, p1sturn, confirm;
    output reg[1:0] player;
    //local variables
    parameter STATE0 = 3'b000, STATE1 = 3'b001, STATE2 = 3'b010, STATE3 = 3'b011, STATE4 = 3'b100;
    reg[2:0] state;
    //enable check - if high, all outputs become 0
    //FSM
	 initial begin
		state <= STATE0;
		check <= 1'b0;
		p2sturn <= 1'b0;
		p1sturn <= 1'b1;
		player <= 2'b00;
		confirm <= 1'b0;
	 end
    always @(posedge clk or negedge reset) begin
		if(reset == 1'b0) begin
			state <= STATE0;
		end
		case(state)
//				STATE1: if(p1played) begin //p1played always block outside to risingEdge
//								p2sturn = 1'b0;
//								player = 2'b01;
//								check = 1'b1;
//								if(valid==0 && player == 2'b01) begin
//									 invalidPlay = 0;
//									 p1sturn = 1'b0;
//									 state <= STATE2;
//								end else begin
//									 player = 2'b01;
//									 invalidPlay = 1;
//									 state <= STATE1;
//								end
//						  end else begin
//								p2sturn = 1'b0;
//								p1sturn = 1'b1;
//								check = 1'b0;
//								state <= STATE1;
//						  end
//				STATE2: if(p2canplay==1) begin
//								p2sturn = 1'b0;
//								if(p2played==0) begin 
//									 player = 2'b10;
//									 p2sturn = 1'b1;
//									 state <= STATE2;
//									 end else begin
//										  player = 2'b10;
//										  check = 1'b1;
//										  p2sturn = 1'b0;
//										  if(valid==0 && player == 2'b10) begin
//												invalidPlay = 0;
//												state <= STATE1;
//											end else begin
//												player = 2'b10;
//												invalidPlay = 1;
//												state <= STATE2;
//												end
//										  end
//									 end
//							else if (valid==0 && player == 2'b01) begin
//								state <= STATE2;
//								end
//            STATE3: if(valid==0 && player == 2'b10) begin
//                        p2sturn = 1'b0;
//                        state <= STATE1;
//                     end else begin
//                        player = 2'b10;
//                        invalidPlay = 1;
//                        state <= STATE2;
//                        end
				  STATE0:	begin								//Wait for P1 confirmation State
								confirm = 1'b0;
								player <= 2'b00;
								p1sturn <= 1'b0;
								p2sturn <= 1'b0;
								if(start == 1'b1) begin
									state <= STATE1;
								end
				  end
				  
				  STATE1:	begin								//P1's Turn State
								p1sturn <= 1'b1;
								p2sturn <= 1'b0;
								player <= 2'b01;
								if(p1played == 1'b1) begin
									check = 1'b1;
									state <= STATE2;
								end
				  end
				  
				  STATE2:	begin								//P1 Check Results of PlayCheck State
								if(valid == 1'b1) begin
									state <= STATE3;
								end
								else begin
									confirm = 1'b1;
									state <= STATE0;
								end
								check = 1'b0;
				  end
				  
				  STATE3:	begin								//P2's Turn State
								p1sturn <= 1'b0;
								p2sturn <= 1'b1;
								player <= 2'b10;
								if(p2played == 1'b1) begin
									check = 1'b1;
									state <= STATE4;
								end
				  end
				  
				  STATE4:	begin								//P2 Check Results of PlayCheck State
								if(valid == 1'b1) begin
									confirm = 1'b1;
									state <= STATE0;
								end
								else begin
									state <= STATE3;
								end
								check = 1'b0;
				  end
		  endcase
    end
endmodule
