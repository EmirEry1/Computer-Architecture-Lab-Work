module LedCPUcore( 
	clk,
	rst,
	addrRd,
	dataRd,
	outPattern
    );
input clk,rst; 
output reg [7:0] addrRd;
input [15:0] dataRd;
output reg [7:0] outPattern; 

parameter FREQ_DELAY = 50000000/16;
Delay #(FREQ_DELAY) dly(.rst(rst), .mclk(clk), .out(enable)); 

reg [7:0] addrRdNext;
reg state, stateNext;
reg [7:0] outPatternNext;
reg [7:0] processTime, processTimeNext;

always@(posedge clk) begin
	addrRd <= #1 addrRdNext;
	state <= #1 stateNext;
	outPattern <= #1 outPatternNext;
	processTime <= #1 processTimeNext;
end

always@(*)begin
	outPatternNext = outPattern;
	processTimeNext = processTime;
	stateNext = state;
	addrRdNext = addrRd;
	if(rst)begin
		addrRdNext = 0;
		stateNext = 0;
		outPatternNext = 0;
		processTimeNext = 0;
	end
	else begin
		// TO DO: Write Verilog Code Here to implement design
	end
end
endmodule
