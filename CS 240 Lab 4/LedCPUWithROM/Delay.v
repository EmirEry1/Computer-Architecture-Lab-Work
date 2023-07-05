module Delay(rst, mclk, out);
input mclk;
input rst;
output out;

parameter FREQ_DELAY = 50000000/16;
parameter CNT_WDTH = 30;

reg [CNT_WDTH-1:0] timer,timerNext;
always@(posedge mclk) begin
	timer <= #1 timerNext;
end
always@(*) begin
	if(rst) begin
		timerNext = 0;
	end else if(timer == FREQ_DELAY)begin
		timerNext = 0;
	end else begin
		timerNext = timer + 1;
	end
end
assign out = (timer==0);
endmodule
