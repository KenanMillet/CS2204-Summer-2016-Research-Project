////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_7484_38
// /___/   /\     Timestamp : 07/20/2016 11:58:04
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Gomoku_PlayCheck_V(check, 
                          player, 
                          p1col, 
                          p1row, 
                          p2col, 
                          p2row, 
                          valid, 
                          win);

    input check;
    input [1:0] player;
    input [3:0] p1col;
    input [3:0] p1row;
    input [3:0] p2col;
    input [3:0] p2row;
   output valid;
   output win;
   
	assign win = 1'b0;
	
	playCheck pc_instant(
    .valid(valid), 
    .p1row(p1row), 
    .p1column(p1col), 
    .check(check), 
    .player(player), 
    .p2row(p2row), 
    .p2column(p2col));
   
endmodule

module playCheck(valid, 
check, player, p1row, p1column, p2row, p2column);
    input check;  
    input[1:0] player;
    input[3:0] p1row, p1column, p2row, p2column;
    output valid; //LOGIC LEVEL LOW
    //local variables
    integer i, j, validPlay, row;
    integer column;
    reg[1:0] board[0:14][0:14];
    //creation of gomoku board 15x15
    initial begin
        for (i=0; i < 15; i=i+1)
            for (j=0; j < 15; j=j+1)
					 board[i][j] = 0;
//              if(i != 10 || j != 5) begin
//						board[i][j] = 0;
//					 end
//					 else begin
//						board[i][j] = 1;
//					 end
		  validPlay = 0;
    end
    //check player
    always @* begin
        if (player == 2'b10) begin
            column = p2column;
            row = p2row;
            end
        else begin
            row = p1row;
            column = p1column;
        end
    end
    //check if valid position and insert
    always @* begin
		 if (check == 1'b1) begin
			  if(row > 14 || column > 14) begin
					validPlay = 0;
			  end
			  else if (board[row][column] == 2'b00) begin
					validPlay = 1;
					board[row][column] = player;
			  end
			  else if (board[row][column] != 2'b00) begin
					validPlay = 0;
			  end
		end else begin
			  validPlay = 1;
		end
   end
    assign valid = validPlay;
    //win check eventually
endmodule
