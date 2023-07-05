module calc(clk, rst, validIn, dataIn, dataOut);
input clk, rst, validIn;
input  [7:0] dataIn;
output reg [7:0] dataOut;

reg [1:0] state, stateNext;
reg [7:0] number, numberNext, dataOutNext;
reg [2:0] operation, operationNext;

reg validIn_d; // validIn delayed by single clk cycle (new)
wire validIn_pos; // positve edge of validIn (new)

assign validIn_pos = validIn & ~validIn_d; // Use this as the "enter" button (new)

always @(posedge clk) begin
    state       <= #1 stateNext;
    number      <= #1 numberNext;
    operation   <= #1 operationNext;
    dataOut     <= #1 dataOutNext;
    validIn_d   <= #1 validIn; // (new)
end

always @(*) begin
    stateNext     = state;
    numberNext    = number;
    operationNext = operation;
    dataOutNext   = dataOut;
    if(rst) begin
        // ---> FILL IN HERE!!!
    end else begin
        case(state)
            0: // WAITING FIRST OPERAND
            begin 
                // ---> FILL IN HERE!!!
            end
            1: // WAITING OPERATION
            begin 
                // ---> FILL IN HERE!!! 
            end
            2: // WAITING SECOND OPERAND (IF NEEDED)
            begin 
                // ---> FILL IN HERE!!!
            end 
        endcase
    end
end
endmodule
