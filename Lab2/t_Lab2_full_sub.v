module t_Lab2_full_sub ();
    wire B,D;
    reg X,Y,Z;

    Lab2_full_sub M2(X,Y,Z,B,D);

    initial begin
        X=1'b0 ; Y=1'b0 ; Z=1'b0;
        #50 X=1'b0 ; Y=1'b0 ; Z=1'b1;
        #50 X=1'b0 ; Y=1'b1 ; Z=1'b0;
        #50 X=1'b0 ; Y=1'b1 ; Z=1'b1;
        #50 X=1'b1 ; Y=1'b0 ; Z=1'b0;
        #50 X=1'b1 ; Y=1'b0 ; Z=1'b1;
        #50 X=1'b1 ; Y=1'b1 ; Z=1'b0;
        #50 X=1'b1 ; Y=1'b1 ; Z=1'b1;
    end

    initial #400 $finish;
    
    initial begin
        $dumpfile("Lab2_full_sub_test.vcd");
        $dumpvars;
    end
endmodule