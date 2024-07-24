// `include "Single_Cycle_Top.v"

module Single_Cycle_Top_Tb;
    
    reg clk = 1'b1, rst;

   

    initial begin
        $dumpfile("Single_Cycle_Top_tb.vcd");
        $dumpvars(0, Single_Cycle_Top_Tb);
    end

    always begin
        #50 clk = ~clk;
    end
    
    initial begin
        rst = 1'b0;
        #150;

        rst = 1'b1;
        #450;
        $finish;
    end
endmodule
