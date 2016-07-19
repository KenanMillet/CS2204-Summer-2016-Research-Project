module DataHub
#(	parameter BusWidth = 1,
	parameter Inputs = 2,
	parameter Outputs = 2,
	parameter ILog2 = $clog2(Inputs)
)
(
	input	[BusWidth-1:0]                 I[Inputs-1:0],
	input   [ILog2-1:0]                    PrgmIn[BusWidth-1:0],
	input   [BusWidth-1:0]                 PrgmOut[Outputs-1:0],

	output	[BusWidth-1:0]                 O[Outputs-1:0]
);
  	
	genvar i, j;
	generate
	   for(i=0; i < Outputs; i=i+1) begin                      //For each register in the OmuxData array (and for each output source)...
	       for(j=0; j < BusWidth; j=j+1) begin                 //And for each bit in the register...
	           assign O[i] = (PrgmOut[i] & I[PrgmIn[j]][j]);   //Set the current output source to the wires from the data bus indicated by
           end                                                     //the current register in the OmuxData array.
	   end  
	endgenerate
endmodule

module DataHub_Seq_Prgm
#(	parameter BusWidth = 1,
	parameter Inputs = 2,
	parameter Outputs = 2,
	parameter ILog2 = $clog2(Inputs),
	parameter OLog2 = $clog2(Outputs)
)
(
	input	[BusWidth-1:0]                 I[Inputs-1:0],
	input	[ILog2-1:0]                    PrgmInSrc,
	input	[OLog2-1:0]	                   PrgmOutSrc,
	input	[BusWidth-1:0]	               PrgmData,
	input							       PrgmInEn,
	input							       PrgmOutEn,
	input                                  PrgmClk,
	input							       Reset,
	output     						       Invalid,
	output	[BusWidth-1:0]                 O[Outputs-1:0]
);
	reg		[ILog2-1:0]           	Imuxdata[BusWidth-1:0];
	reg		[BusWidth-1:0]			Omuxdata[Outputs-1:0];
	
	integer                         i, j;

	initial begin												//Intial Block
		for(i=0; i < BusWidth; i=i+1) begin						//Initialize Imuxdata to all 0's
			for(j=0; j < ILog2; j=j+1) begin
				Imuxdata[i][j] = 1'b0;
			end
		end

		for(i=0; i < Outputs; i=i+1) begin						//Initialize Omuxdata to all 0's
			for(j=0; j < BusWidth; j=j+1) begin
				Omuxdata[i][j] = 1'b0;
			end
		end
	end
    
    always @(posedge PrgmClk or negedge Reset) begin                             //Program: modifies Imuxdata and Omuxdata
        if(!Reset) begin
            for(i=0; i < BusWidth; i=i+1) begin
                for(j=0; j < ILog2; j=j+1) begin
                    Imuxdata[i][j] = 1'b0;
                end
            end
        
            for(i=0; i < Outputs; i=i+1) begin
                for(j=0; j < BusWidth; j=j+1) begin
                    Omuxdata[i][j] = 1'b0;
                end
            end   
        end
        else begin
            if(PrgmInEn) begin
                for(i=0; i < BusWidth; i=i+1) begin                 //For each register in the Imuxdata array...
                    if (PrgmData[i]) begin                          //Set the register to PrgmInSrc only if the corresponding
                        Imuxdata[i] = PrgmInSrc;                        //wire in PrgmInData is 1.
                    end
                end
            end
            if(PrgmOutEn && PrgmOutSrc < Outputs) begin
                Omuxdata[PrgmOutSrc] <= PrgmData;                   //Whichever output source is specified by PrgmOutSrc...
            end                                                         //Set that register in the OmuxData array to PrgmOutData.
        end
    end
	
	genvar oindex, iindex;
	generate
	   assign Invalid = (PrgmInEn | PrgmInEn) & ~Reset;
	   for(oindex=0; oindex < Outputs; oindex=oindex+1) begin                                  //For each register in the OmuxData array (and for each output source)...
	       for(iindex=0; iindex < BusWidth; iindex=iindex+1) begin                             //And for each bit in the register...
	           assign O[oindex] = (Omuxdata[oindex] & I[Imuxdata[iindex]][iindex]) | Reset;    //Set the current output source to the wires from the data bus indicated by
	       end                                                                                     //the current register in the OmuxData array.
	   end
	endgenerate
endmodule