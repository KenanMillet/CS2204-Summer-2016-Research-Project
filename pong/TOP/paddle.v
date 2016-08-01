////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2504_43
// /___/   /\     Timestamp : 08/01/2016 16:55:05
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_paddle(collBottom, 
              collLeft, 
              collRight, 
              collTop, 
              elapseTime, 
              extIn, 
              tickIn, 
              paddleHeight, 
              paddlePosX, 
              paddlePosY, 
              paddleWidth);

    input collBottom;
    input collLeft;
    input collRight;
    input collTop;
    input [19:0] elapseTime;
    input [3:0] extIn;
    input tickIn;
   output [7:0] paddleHeight;
   output [9:0] paddlePosX;
   output [9:0] paddlePosY;
   output [7:0] paddleWidth;
   paddle instant_paddle(tickin, collTop, collBottom, collLeft, collRight, elapseTime, extIn,
	paddleWidth, paddleHeight, paddlePosX, paddlePosY);
   
endmodule

module paddle(
    input tickIn, collTop, collBottom, collLeft, collRight,
    input[19:0] elapseTime,
    input[3:0] extIn,
    output reg[7:0] paddleWidth, paddleHeight,
    output reg[9:0] paddlePosX, paddlePosY
);
    integer xDir, yDir; 
    reg[7:0] paddleSpeed = 10;
    initial begin
        paddleWidth = 80;
        paddleHeight = 20;
    end
    initial begin
        paddlePosX <= 511;
        paddlePosY <= 1023;
    end 
    //dealing with collision and updating positions
    always @(posedge tickIn) begin
        if (extIn[0]) begin
        yDir = ~collTop * (-1);
        end
        else if (extIn[1]) begin
        yDir = ~collBottom;
        end
        if (extIn[2]) begin
        xDir = ~collLeft * (-1);
        end
        else if (extIn[3]) begin
        xDir = ~collRight;
        end
        paddlePosX <= paddlePosX + (elapseTime * paddleSpeed * xDir);
        paddlePosY <= paddlePosY + (elapseTime * paddleSpeed * yDir);      
    end
endmodule