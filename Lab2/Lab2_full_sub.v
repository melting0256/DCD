module Lab2_full_sub (input X,Y,Z,output B,D);
    wire B1,D1,B2;

    Lab2_half_sub_gatelevel HS1 (X,Y,B1,D1);
    Lab2_half_sub_gatelevel HS2 (D1,Z,B2,D);
    or #(10) G1 (B,B1,B2); 
endmodule