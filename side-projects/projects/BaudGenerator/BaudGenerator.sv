module BaudGenerator
#(
    parameter ClkFrequency          = 100000000, //100 MHz
    parameter BaudRate              = 9600 //9600 Bd
)
(
    input       Clk,
    input		Sync,
    output      Tick
);
integer unsigned counter;
reg valid;

initial begin
    valid <= 1'b0;
    counter <= 0;
end

always@(posedge Sync) begin
	valid <= 1'b1;
	counter <= 0;
end

always@(posedge Clk) begin
    counter = counter + BaudRate;
    valid = (counter >= ClkFrequency) ? 1'b1 : 1'b0;
    counter <= counter % ClkFrequency;
end

assign Tick = (valid) ? Clk : 1'b0;

endmodule