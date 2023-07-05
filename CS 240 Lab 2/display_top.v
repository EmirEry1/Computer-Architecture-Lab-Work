`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module display_top(clk, rst, dataIn, anode, sevenSeg);

input clk, rst;
input [7:0] dataIn;
output wire [3:0] anode;
output wire [7:0] sevenSeg;

reg [15:0] fourDigIn, fourDigInNext;

SevenSegFourDig SevenSegFourDig(.clk(clk), .rst(rst), .in(fourDigIn), .anode(anode), .sevenSeg(sevenSeg));

always @(posedge clk) begin
  fourDigIn <= #1 fourDigInNext;
end

always @(*) begin
  fourDigInNext = fourDigIn;
  if (rst) begin
    fourDigInNext = 0; //16'h0000;
  end else begin
    //FILL IN HERE
  end
end


endmodule
