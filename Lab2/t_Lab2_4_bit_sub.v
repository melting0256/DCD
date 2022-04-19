module t_Lab2_4_bit_sub ();
    wire Bout1,Bout2,Bout3,Bout4;
    wire [3:0]Diff1,Diff2,Diff3,Diff4;
    reg [3:0]X,Y;
    reg Bin;

    Lab2_4_bit_RBS M3(X,Y,Bin,Bout1,Diff1);
    Lab2_4_bit_BLS_gatelevel BG(X,Y,Bin,Bout2,Diff2);
    Lab2_4_bit_BLS_dataflow BD(X,Y,Bin,Bout3,Diff3);
    Lab2_4_bit_BLS_behavioral BB(X,Y,Bin,Bout4,Diff4);

    initial begin
        X=4'b1111 ; Y=4'b1111 ; Bin=1'b1;
        #50 X=4'b0001 ; Y=4'b1101 ; Bin=1'b0;
        #50 X=4'b0101 ; Y=4'b0101 ; Bin=1'b0;
        #50 X=4'b1100 ; Y=4'b0011 ; Bin=1'b1;
        #50 X=4'b1000 ; Y=4'b0111 ; Bin=1'b0;
        #50 X=4'b0000 ; Y=4'b1111 ; Bin=1'b1;
        #50 X=4'b0110 ; Y=4'b0001 ; Bin=1'b0;
        #50 X=4'b1100 ; Y=4'b1000 ; Bin=1'b1;
    end

    initial #400 $finish;

    initial begin
        $dumpfile("Lab2_4_bit_sub_test.vcd");
        $dumpvars;
    end
endmodule