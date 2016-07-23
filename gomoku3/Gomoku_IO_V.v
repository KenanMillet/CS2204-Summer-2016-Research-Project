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

module Gomoku_IO_V(sendIn,
						 sendConfirmedIn,
						 recvIn,
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
						 sendOut,
						 recvConfirmedOut,
						 recvOut);

    input sendIn;
	 input sendConfirmedIn;
	 input recvIn;
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
	output sendOut;
	output recvConfirmedOut;
	output recvOut;
	
	reg send;
	
	parameter BUSY = 1'b1, AVAIL = 1'b0;
	
	reg [3:0] USBrowStore, USBcolStore;
	reg USBplayerStore;
	
	wire [3:0] USBrow, USBcol;
	wire USBplayer;
	
	initial begin
		send <= 1'b0;
		USBrowStore <= 4'b0000;
		USBcolStore <= 4'b0000;
		USBplayerStore <= 1'b0;
	end
	
	always@(*) begin
		case(send)
			AVAIL:	begin
				if(player == 2'b01) begin
					USBrowStore <= USBp1row;
					USBcolStore <= USBp1col;
				end
				else begin
					USBrowStore <= USBrow;
					USBcolStore <= USBcol;
				end
				USBplayerStore <= USBplayer;
				
				send <= sendIn;
			end

			BUSY:		begin
				send <= ~sendConfirmedIn;
			end
		endcase
	end
	
	assign recvConfirmedOut = recvIn;
	assign recvOut = recvIn;
	assign USBp2row = USBrowStore;
	assign USBp2col = USBcolStore;
	assign USBp1sturn = ~USBplayerStore;
   
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
    .confirmIn(send),
    .player(player),
    .p1sturn(p1sturn),
    .USBp2row(USBrow),
    .USBp2column(USBcol),
    .USBp1sturn(USBplayer),
	 .confirmOut(sendOut));
	 
	 
   
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
    assign USBp2row = p2row;
    assign USBp2column = p2column;
    assign USBp1sturn = p1sturn;
    //module to assign USB inputs from microblaze code to output to Verilog modules
endmodule
