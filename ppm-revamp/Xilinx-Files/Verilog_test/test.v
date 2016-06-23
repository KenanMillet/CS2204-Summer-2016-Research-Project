`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:59 06/22/2016 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module playcheck(oinvalid, playero, reset, enable, row, column, playeri);
	input enable, reset;
    input[3:0] row, column;
    input[1:0] playeri;
    output oinvalid;
	output[1:0] playero;
	reg[1:0] board[0:14][0:14];
	integer invalid;
	integer i, j;
	initial begin
	for (i=0; i < 15; i=i+1)
		for (j=0; j < 15; j=j+1)
			board[i][j] = 0;
	end
	always @*
	begin
	   if (enable == 1'b1 && board[row][column] != 2'b00)
	       invalid = 1'b1;
	   else if (enable == 1'b1)
	       board[row][column] = playeri;
	       invalid = 1'b0;
	end        
	assign oinvalid = invalid;	
	assign playero = board[row][column];
	
endmodule

module segment7(
     bcd,
     seg
    );
     
     //Declare inputs,outputs and internal variables.
     input [3:0] bcd;
     output [6:0] seg;
     reg [6:0] seg;

//always block for converting bcd digit into 7 segment format
    always @(bcd)
    begin
        case (bcd) //case statement
            0 : seg = 6'b0000001;
            1 : seg = 6'b1001111;
            2 : seg = 6'b0010010;
            3 : seg = 6'b0000110;
            4 : seg = 6'b1001100;
            5 : seg = 6'b0100100;
            6 : seg = 6'b0100000;
            7 : seg = 6'b0001111;
            8 : seg = 6'b0000000;
            9 : seg = 6'b0000100;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 6'b1111111; 
        endcase
    end
    
endmodule

module tb_segment7;

    reg [3:0] bcd;
    wire [6:0] seg;
    bcd = invalid;
    // Instantiate the Unit Under Test (UUT)
    segment7 uut (
        .bcd(bcd), 
        .seg(seg)
    );
    initial begin 
       
    end
endmodule