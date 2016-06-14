`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:27 06/14/2016 
// Design Name: 
// Module Name:    mcs_0 
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
module mcs_0(
	input clk_fpga,
	input reset,
	input rx,
	output tx,
	input[7:0] in,
	output[7:0] out
    );

microblaze_mcs mcs_0(
	.Clk(clk_fpga),
	.Reset(reset),
	.UART_rx(rx),
	.UART_tx(tx),
	.GPI1(in),
	.GPO1(out),
	.GPI1_Interrupt()
	);

endmodule
