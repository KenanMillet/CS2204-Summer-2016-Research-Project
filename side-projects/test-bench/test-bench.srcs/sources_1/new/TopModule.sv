module TopModule(
    input	[31:0]                 I[1:0],
	input	[0:0]                    PrgmInSrc,
	input	[0:0]	                   PrgmOutSrc,
	input	[31:0]	               PrgmData,
	input							       PrgmInEn,
	input							       PrgmOutEn,
	input                                  PrgmClk,
	input							       Reset,
	output	reg						       Invalid,
	output  reg	[31:0]             O[1:0]
);
DataHub #(32, 2, 2) dh(I, PrgmInSrc, PrgmOutSrc, PrgmData, PrgmInEn, PrgmOutEn, PrgmClk, Reset, Invalid, O);
endmodule
