////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5008_39
// /___/   /\     Timestamp : 08/01/2016 15:40:59
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_ball(collBottom, 
            collLeft, 
            collRight, 
            elapseTime, 
            reset, 
            tickIn, 
            ballHeight, 
            ballPosX, 
            ballPosY, 
            ballWidth, 
            collTop);

    input collBottom;
    input collLeft;
    input collRight;
    input [19:0] elapseTime;
    input reset;
    input tickIn;
   output [7:0] ballHeight;
   output [9:0] ballPosX;
   output [9:0] ballPosY;
   output [7:0] ballWidth;
   output collTop;
   ball instant_ball(tickIn, collTop, collBottom, collLeft, collRight, reset, elapseTime, ballWidth, ballHeight, ballPosX, ballPosY);
   
endmodule

module ball(
    input tickIn, collTop, collBottom, collLeft, collRight, reset,
    input[19:0] elapseTime,
    output reg[7:0] ballWidth, ballHeight,
    output reg[9:0] ballPosX, ballPosY
);
    integer xDir, yDir; 
    reg[7:0] ballSpeed = 10;
    
    initial begin
        ballWidth = 20;
        ballHeight = 20;
    end
    initial begin
        ballPosX <= 511;
        ballPosY <= 1023;
    end 
    always @(posedge tickIn) begin
        if (collTop == 1 || collBottom == 1) begin
            yDir = yDir * (-1);
        end
        if (collLeft == 1 || collRight == 1) begin
            xDir = xDir * (-1);
        end
        ballPosX <= ballPosX + (elapseTime * ballSpeed * xDir);
        ballPosY <= ballPosY + (elapseTime * ballSpeed * yDir);
    end
endmodule