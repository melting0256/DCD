module t_Lab1 ();
    wire F1,F2,F3;
    reg A,B,C,D;

    Lab1_gatelevel M1(F1,A,B,C,D);
    Lab1_dataflow M2(F2,A,B,C,D);
    Lab1_gatelevel_UDP M3(F3,A,B,C,D);
    
    initial begin
        A=1'b0 ; B=1'b0 ; C=1'b0 ; D=1'b0;
        #50 A=1'b0 ; B=1'b1 ; C=1'b0 ; D=1'b1;
        #50 A=1'b1 ; B=1'b0 ; C=1'b0 ; D=1'b0;
        #50 A=1'b1 ; B=1'b1 ; C=1'b1 ; D=1'b1; 
    end
    
    initial #200 $finish;

    initial begin
        $dumpfile("Lab1_Homework_test.vcd");
        $dumpvars;
    end
endmodule