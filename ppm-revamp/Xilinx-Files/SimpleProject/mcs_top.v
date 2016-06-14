`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:57 06/13/2016 
// Design Name: 
// Module Name:    mcs_top 
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
module mcs_top(
	input clk_fpga,
	input reset,
	input rx,
	input tx,
	input[31:0] number,
	output[31:0] addition
    );

communication mcs_0(
	.Clk(clk_fpga),
	.Reset(reset),
	.UART_Rx(rx),
	.UART_Tx(tx),
	.GPI1(number),
	.GPO1(addition),
	.GPI1_Interrupt()
	
	);
endmodule
