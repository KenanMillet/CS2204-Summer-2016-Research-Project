module DataHub
#(	parameter BUSWIDTH = 1,
	parameter INPUTS = 2,
	parameter OUTPUTS = 2,
	parameter ILOG2 = $clog2(INPUTS),
	parameter OLOG2 = $clog2(OUTPUTS)
)
(
	input	[BUSWIDTH-1:0]                 I[INPUTS-1:0],
	input	[ILOG2-1:0]                    PrgmInSrc,
	input	[OLOG2-1:0]	                   PrgmOutSrc,
	input	[BUSWIDTH-1:0]	               PrgmData,
	input							       PrgmInEn,
	input							       PrgmOutEn,
	input                                  PrgmClk,
	input							       Reset,
	output	reg						       Invalid,
	output  reg	[BUSWIDTH-1:0]             O[OUTPUTS-1:0]
);
	reg		[ILOG2-1:0]           	Imuxdata[BUSWIDTH-1:0];
	reg		[BUSWIDTH-1:0]			Omuxdata[OUTPUTS-1:0];

	reg    	[BUSWIDTH-1:0]			outs[OUTPUTS-1:0];
	reg								inv;
	
	reg     [BUSWIDTH-1:0]          data;
	integer                         PO;
	integer                         isrc;
	integer                         i, j;

	initial begin												//Intial Block
		for(i=0; i < BUSWIDTH; i=i+1) begin						//Initialize Imuxdata to all 0's
			for(j=0; j < ILOG2; j=j+1) begin
				Imuxdata[i][j] = 1'b0;
			end
		end

		for(i=0; i < OUTPUTS; i=i+1) begin						//Initialize Omuxdata to all 0's
			for(j=0; j < BUSWIDTH; j=j+1) begin
				Omuxdata[i][j] = 1'b0;
			end
		end
		inv = 1'b0;												//Initialize Invalid to 0 so the user knows that outputs are accurate
	end

    always @(posedge Reset) begin                               //Reset: Same as Initial Block except invalid is high
        for(i=0; i < BUSWIDTH; i=i+1) begin
            for(j=0; j < ILOG2; j=j+1) begin
                Imuxdata[i][j] = 1'b0;
            end
        end
    
        for(i=0; i < OUTPUTS; i=i+1) begin
            for(j=0; j < BUSWIDTH; j=j+1) begin
                Omuxdata[i][j] = 1'b0;
            end
        end
        inv = 1'b1;    
    end
    
    always @(posedge PrgmClk) begin                             //Program: modifies Imuxdata and Omuxdata
        if(PrgmInEn == 1'b1 && Reset == 1'b0) begin
            for(i=0; i < BUSWIDTH; i=i+1) begin                 //For each register in the Imuxdata array...
                if (PrgmData[i] == 1'b1) begin                  //Set the register to PrgmInSrc only if the corresponding
                    Imuxdata[i] = PrgmInSrc;                        //wire in PrgmInData is 1.
                end
            end
        inv = 1'b1;                                             //Set Invalid to 1 so the user knows that data will
        end                                                         //be invalid while the hub is being programmed.
        if(PrgmOutEn == 1'b1 && Reset == 1'b0) begin
            PO = PrgmOutSrc;                                    //Whichever output source is specified by PrgmOutSrc...
            Omuxdata[PO] = PrgmData;                            //Set that register in the OmuxData array to PrgmOutData.
    
            for(i=0; i < OUTPUTS; i=i+1) begin                  //Set all output busses to be all 1's
                for(j=0; j < BUSWIDTH; j=j+1) begin             //(Note that this is an impossibility while in the Execution Block)
                    outs[i][j] = 1'b1;
                end
            end
        inv = 1'b1;                                             //Set Invalid to 1 so the user knows that data will
        end                                                         //be invalid while the hub is being programmed.
    end

	always @(*) begin                                           //Execution Block (redirects input sources to output sources)
		if(PrgmInEn == 1'b0 && PrgmInEn == 1'b0 && Reset == 1'b0) begin
            for(i=0; i < BUSWIDTH; i=i+1) begin 				//For each register in the ImuxData array (and for each wire in the data bus)...
                isrc = Imuxdata[i];                             //Set the current wire in the bata bus to the input source indicated by
                data[i] = I[isrc][i];                               //the current register in the ImuxData array.
            end
            for(i=0; i < OUTPUTS; i=i+1) begin                  //For each register in the OmuxData array (and for each output source)...
                outs[i] = Omuxdata[i] & data;                   //Set the current output source to the wires from the data bus indicated by
            end                                                    //the current register in the OmuxData array.
            
            inv = 1'b0;                                         //Initialize Invalid to 0 so the user knows that outputs are accurate
		end
		Invalid = inv;                                          //Setting output ports
		O = outs;
	end
endmodule