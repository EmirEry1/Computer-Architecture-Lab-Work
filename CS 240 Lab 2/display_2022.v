`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module display_2022(clk, rst, anode, sevenSeg);

input clk, rst;
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
    fourDigInNext[15:12] = 4'd2;
    fourDigInNext[11:8] = 4'd0;
    fourDigInNext[7:4] = 4'd2;
    fourDigInNext[3:0] = 4'd2;
  end
end


endmodule
