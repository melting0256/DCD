module t_Lab2_half_sub ();
    wire B,D;
    reg X,Y;

    Lab2_half_sub_gatelevel M1(X,Y,D,B);
    
    initial begin
        X=1'b0 ; Y=1'b0;
        #50 X=1'b0 ; Y=1'b1;
        #50 X=1'b1 ; Y=1'b0;
        #50 X=1'b1 ; Y=1'b1;
    end
    
    initial #200 $finish;

    initial begin
        $dumpfile("Lab2_half_sub_test.vcd");
        $dumpvars;
    end
endmodule