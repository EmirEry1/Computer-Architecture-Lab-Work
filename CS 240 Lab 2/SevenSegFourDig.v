`timescale 1ns / 1ps

module SevenSegFourDig(clk, rst, in, anode, sevenSeg);

input clk, rst;
input [15:0] in;
output reg [3:0] anode;
output wire [7:0] sevenSeg;

reg [15:0] counter, counterNext;

reg [3:0] sevenSegIn; //input to the SevenSegOneDig

SevenSegOneDig SevenSegOneDig(.in(sevenSegIn), .sevenSeg(sevenSeg));

always@(posedge clk)begin
  counter <= #1 counterNext;
end

always @(*) begin
  counterNext = counter;
  anode = 0;
  sevenSegIn = 0; //4'b0000;
  if (rst) begin
    counterNext = 0;
  end else begin
    counterNext = counter + 1;
    if (counter == 16'hFFFF) begin
      counterNext = 0;
    end
  end
  
  case(counter[15:14])
    0: begin
      anode = 4'b0111;
      //FILL HERE (1 LINE)
      
    end
    //FILL HERE
    
  endcase
end

endmodule

