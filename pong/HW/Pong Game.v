`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2016 02:23:07 PM
// Design Name: 
// Module Name: Pong Game
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
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

module tick(
    input clk,
    input enable,
    output reg tickOut,
    output reg[19:0] elapseTime
);
    reg[19:0] counter = 0;
    
    always @(posedge clk) begin
        if (~enable) begin
            counter <= counter + 1;
            tickOut <= 0;
        end
        else begin
            elapseTime = counter;
            tickOut <= 1;
            counter <= 0;
        end
    end
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

module ball(
    input tickIn, collTop, collBottom, collLeft, collRight,
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

module player(
    input clk,
    input reset,
    input[1:0] ctrlSel,
    input[3:0] extIn,
    input[9:0] ballPosX, ballPosY, paddlePosX, paddlePosY,
    output reg[3:0] extOut
);

    reg[3:0] ipcOut, bpcOut;
    
    IPC ipc_inst(clk, reset, extIn,
    ipcOut);
    
    BPC bpc_inst(clk, reset, ctrlSel, ballPosX, ballPosY, paddlePosX, paddlePosY,
    bpcOut);
    //initial value before positive edge of clock to be undecided
    initial begin
        extOut <= 4'b1111;
    end
    //controller selection for either IPC or BPC
    always @(posedge clk) begin
        if(ctrlSel == 2'b00 || ctrlSel == 2'b11) begin
            extOut <= 4'b1111;
        end
        else if (ctrlSel == 2'b01) begin
            extOut <= ipcOut;
        end
        else begin
            extOut <= bpcOut;
        end
    end
endmodule

module IPC(
    input clk,
    input reset,
    input[3:0] extIn,
    output reg[3:0] extOut    
);
    always @(posedge clk) begin
        extOut <= extIn;
    end
endmodule

module BPC(
    input clk,
    input reset,
    input[1:0] ctrlSel,
    input[9:0] ballPosX, ballPosY, paddlePosX, paddlePosY,
    output reg[3:0] extOut
);
    localparam NONE = 4'b0000;
    localparam UNDECIDED = 4'b1111;
    localparam UP = 4'b0001;
    localparam DOWN = 4'b0010;
    localparam LEFT = 4'b0100;
    localparam RIGHT = 4'b1000;
  
    //make decision of paddle position according to ball position
    always @(posedge clk) begin
         if (paddlePosX < ballPosX) begin
            extOut <= RIGHT;
         end
         else if (paddlePosX > ballPosX) begin
            extOut <= LEFT;
         end            
         else begin
            extOut <= NONE;
         end
    end
endmodule