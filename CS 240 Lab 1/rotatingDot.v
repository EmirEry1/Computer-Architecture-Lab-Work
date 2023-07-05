module rotatingDot(clk, rst, dataOut);

input clk, rst;
output reg [7:0] dataOut;

reg [25:0] counter, counterNext;
reg [ 7:0] dataOutNext;

parameter COUNT = 26'h3FFFFFF;


always @(posedge clk) begin
	counter <= #1 counterNext;
	dataOut <= #1 dataOutNext;
end

always @(*) begin
	if(rst) begin
		//WRITE YOUR CODE HERE (2 Lines)
		
		
	end
	else if(counter == COUNT -1) begin
		//WRITE YOUR CODE HERE (2 Lines)
		
		
	end
	else begin
		dataOutNext = dataOut;
		counterNext = counter + 1;
	end
end

endmodule
