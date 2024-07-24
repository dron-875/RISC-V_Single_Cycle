module Instruction_Memory(rst,A,RD);

  input rst;
  input [31:0]A;
  output [31:0]RD;

  reg [31:0] mem [511:0];
  
  assign RD = (rst == 1'b0) ? {32{1'b0}} : mem[A[31:2]];

  initial begin
    mem[0]=32'h0064A423;
    
    $readmemh("memfile.hex",mem);
  end


endmodule