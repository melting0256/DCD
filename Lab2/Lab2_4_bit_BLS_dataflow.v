module Lab2_4_bit_BLS_dataflow (input [3:0]X,Y,input Bin,output Bout,output [3:0]Diff);
    wire [2:0]B;
    wire [3:0]G,P;

    assign P[0]=(~X[0]) ^ Y[0];
    assign P[1]=(~X[1]) ^ Y[1];
    assign P[2]=(~X[2]) ^ Y[2];
    assign P[3]=(~X[3]) ^ Y[3];
    assign G[0]=(~X[0]) & Y[0];
    assign G[1]=(~X[1]) & Y[1];
    assign G[2]=(~X[2]) & Y[2];
    assign G[3]=(~X[3]) & Y[3];
    assign B[0]=G[0] | (P[0] & Bin);
    assign B[1]=G[1] | (P[1] & B[0]);
    assign B[2]=G[2] | (P[2] & B[1]);
    assign Bout=G[3] | (P[3] & B[2]);
    assign Diff[0]=(~P[0]) ^ Bin;
    assign Diff[1]=(~P[1]) ^ B[0];
    assign Diff[2]=(~P[2]) ^ B[1];
    assign Diff[3]=(~P[3]) ^ B[2];

endmodule