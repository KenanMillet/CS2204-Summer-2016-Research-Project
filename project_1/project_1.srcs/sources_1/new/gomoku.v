`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2016 04:45:37 PM
// Design Name: 
// Module Name: gomoku
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
module top();
    wire p1played, p2played, p2canplay, check, valid, p2sturn, p1sturn, USBp2canplay, USBp1played, USBp1sturn, invalidPlay;
    wire[1:0] player;
    wire[3:0] p1row, p1column, p2row, p2column, USBp1row, USBp1column, USBp2row, USBp2column;
    
    i_o io_instant(
    .p2canplay(p2canplay), 
    .p1played(p1played), 
    .p1row(p1row), 
    .p1column(p1column), 
    .USBp1row(USBp1row), 
    .USBp1column(USBp1column), 
    .USBp1played,
    .USBp2canplay,
    .p2row(p2row),
    .p2column(p2column),
    .invalidPlay,
    .player(player),
    .p1sturn(p1sturn),
    .USBp2row(USBp2row),
    .USBp2column(USBp2column),
    .USBp1sturn(USBp1sturn));
    
    controlUnit cu_instant(
    .p2canplay(p2canplay), 
    .p1played(p1played), 
    .p2played(p2played), 
    .valid(valid), 
    .player(player), 
    .check(check), 
    .p2sturn(p2sturn),
    .p1sturn(p1sturn),
    .invalidPlay(invalidPlay));
    
    playCheck pc_instant(
    .valid(valid), 
    .p1row(p1row), 
    .p1column(p1column), 
    .check(check), 
    .player(player), 
    .p2row(p2row), 
    .p2column(p2column));
    
    machinePlayer mp_instant(
    .p2sturn(p2sturn), 
    .p2row(p2row), 
    .p2column(p2column), 
    .p2played(p2played), 
    .valid(valid));
endmodule
    
module controlUnit(check, player, p2sturn, p1sturn, invalidPlay,
p1played, p2played, valid, p2canplay, reset, enable);
    input p1played, p2played, p2canplay, reset, enable, valid;
    output reg check, p2sturn, p1sturn, invalidPlay;
    output reg[1:0] player;
    //local variables
    parameter STATE1 = 3'b001, STATE2 = 3'b010, STATE3 = 3'b100;
    reg[2:0] state;
    integer p1p = 0;
    //enable check - if high, all outputs become 0
    //FSM
    always @(negedge reset) begin
        state <= STATE1;
        end
    always @(posedge p1played) begin
        p1p = 1;
        end
    always @* begin
    case(state)
            STATE1: if(p1p==1) begin //p1played always block outside to risingEdge
                        player = 2'b01;
                        check = 1'b1;
                        if(valid==0 && player == 2'b01) begin
                            p1p = 0;
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

module playCheck(valid, 
check, player, p1row, p1column, p2row, p2column);
    input check;  
    input[1:0] player;
    input[3:0] p1row, p1column, p2row, p2column;
    output valid;
    //local variables
    integer i, j, validPlay, row;
    integer column;
    reg[1:0] board[0:14][0:14];
    //creation of gomoku board 15x15
    initial begin
        for (i=0; i < 15; i=i+1)
            for (j=0; j < 15; j=j+1)
                board[i][j] = 0;
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
        if (board[row][column] == 2'b00) begin
            validPlay = 0;
            board[row][column] = player;
            end
        else if (board[row][column] != 2'b00) begin
            validPlay = 1;
            end
        end
    end
    assign valid = validPlay;
    //win check eventually
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

module i_o(USBp1sturn, USBp2row, USBp2column, p1played, p1row, p1column, p2canplay, 
USBp2canplay, USBp1row, USBp1column, USBp1played, p2row, p2column, invalidPlay, player, p1sturn);
    input p1sturn, invalidPlay, USBp2canplay, USBp1played;
    input[3:0] p2row, p2column, USBp1row, USBp1column;
    input[1:0] player;
    output[3:0] p1row, p1column, USBp2row, USBp2column;
    output USBp1sturn, p2canplay, p1played;
    assign p1row = USBp1row;
    assign p1column = USBp1column;
    assign p2canplay = USBp2canplay;
    assign p1played = USBp1played;
    assign USBp2row = p2row;
    assign USBp2column = p2column;
    assign USBp1sturn = p1sturn;
    //module to assign USB inputs from microblaze code to output to Verilog modules
endmodule