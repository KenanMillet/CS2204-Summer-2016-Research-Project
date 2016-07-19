module DataHub_32_2_2
(
    input	[31:0]                  I0,
    input	[31:0]                  I1,
    input	[31:0]                  I2,
	input	[1:0]                   PrgmInSrc,
	input	[1:0]	                PrgmOutSrc,
	input	[31:0]	                PrgmData,
	input						    PrgmInEn,
	input							PrgmOutEn,
	input                           PrgmClk,
	input							Reset,
	output     						Invalid,
	output	[31:0]                  O0,
	output	[31:0]                  O1,
	output	[31:0]                  O2
    );
    DataHub_Seq_Prgm #(32, 2, 2) core({I0, I1, I2}, PrgmInSrc, PrgmOutSrc, PrgmData, PrgmInEn, PrgmOutEn,
                             PrgmClk, Reset, Invalid, {O0, O1, O2});
endmodule
