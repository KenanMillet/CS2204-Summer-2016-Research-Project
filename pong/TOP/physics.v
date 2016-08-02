////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_6868_39
// /___/   /\     Timestamp : 08/02/2016 14:33:18
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module top_physics(aBottom, 
               aLeft, 
               aRight, 
               aTop, 
               bBottom, 
               bLeft, 
               bRight, 
               bTop, 
               aCollBottom, 
               aCollLeft, 
               aCollRight, 
               aCollTop, 
               bCollBottom, 
               bCollLeft, 
               bCollRight, 
               bCollTop);

    input [9:0] aBottom;
    input [9:0] aLeft;
    input [9:0] aRight;
    input [9:0] aTop;
    input [9:0] bBottom;
    input [9:0] bLeft;
    input [9:0] bRight;
    input [9:0] bTop;
   output aCollBottom;
   output aCollLeft;
   output aCollRight;
   output aCollTop;
   output bCollBottom;
   output bCollLeft;
   output bCollRight;
   output bCollTop;
	 physics instant_physics(aTop, aBottom, aLeft, aRight, bTop, bBottom, bLeft, bRight,
    aCollTop, aCollBottom, aCollLeft, aCollRight, bCollTop, bCollBottom, bCollLeft, bCollRight);
  
	 
endmodule

module physics(
    input[9:0] aTop, aBottom, aLeft, aRight, bTop, bBottom, bLeft, bRight,
    output reg aCollTop, aCollBottom, aCollLeft, aCollRight, bCollTop, bCollBottom, bCollLeft, bCollRight
);
    always @* begin
        if (aTop <= bBottom && bTop <= aBottom) begin
            aCollTop = 1;
            aCollBottom = 0;;
            bCollBottom = 1;
            bCollTop = 0;
        end
        if (bTop <= aBottom && aTop <= bBottom) begin
            bCollTop = 1;
            bCollBottom = 0;
            aCollBottom = 1;
            aCollTop = 0;
        end
        if (aLeft <= bRight && bLeft <= aRight) begin
            aCollLeft = 1;
            aCollRight = 0;
            bCollRight = 1;
            bCollLeft = 0;
        end
        if (bLeft <= aRight && aLeft <= bRight) begin
            aCollRight = 1;
            aCollLeft = 0;
            bCollLeft = 1;
            bCollRight = 0;
        end
    end
endmodule
