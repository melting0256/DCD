module Lab2_half_sub_gatelevel (input X,Y,output D,B);
    wire w1;

    not (w1,X);
    and #(10) (B,w1,Y);
    xor #(20) (D,X,Y);


endmodule