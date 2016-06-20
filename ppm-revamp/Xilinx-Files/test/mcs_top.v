`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:43 06/16/2016 
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
	output tx,
	input [31:0] in,
	output [31:0] out
    );

microblazecore mcs_0(
	.Clk(clk_fpga),
	.Reset(reset),
	.UART_rx(rx),
	.UART_tx(tx),
	.GPI1(in),
	.GPO1(out),
	.GPI1_Interrupt()
);

endmodule
