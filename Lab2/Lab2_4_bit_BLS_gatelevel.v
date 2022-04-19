module Lab2_4_bit_BLS_gatelevel (input [3:0]X,Y,input Bin,output Bout,output [3:0]Diff);
    wire [2:0]B;
    wire [3:0]G,P;
    wire w0,m0,a0,w1,m1,a1,w2,m2,a2,w3,m3,a3;

    xnor#(20)(P[0],X[0],Y[0]);
    xnor#(20)(P[1],X[1],Y[1]);
    xnor#(20)(P[2],X[2],Y[2]);
    xnor#(20)(P[3],X[3],Y[3]);
    
    not(m0,X[0]);
    not(m1,X[1]);
    not(m2,X[2]);
    not(m3,X[3]);
    
    or#(10)(G[0],m0,Y[0]);
    or#(10)(G[1],m1,Y[1]);
    or#(10)(G[2],m2,Y[2]);
    or#(10)(G[3],m3,Y[3]);
    
    and#(10)(a0,P[0],Bin);
    and#(10)(a1,P[1],B[0]);
    and#(10)(a2,P[2],B[1]);
    and#(10)(a3,P[3],B[2]);
    
    or#(10)(B[0],a0,G[0]);
    or#(10)(B[1],a1,G[1]);
    or#(10)(B[2],a2,G[2]);
    or#(10)(Bout,a3,G[3]);
    
    not(w0,P[0]);
    not(w1,P[1]);
    not(w2,P[2]);
    not(w3,P[3]);
    
    xor#(20)(Diff[0],w0,Bin);
    xor#(20)(Diff[1],w1,B[0]);
    xor#(20)(Diff[2],w2,B[1]);
    xor#(20)(Diff[3],w3,B[2]);
    
endmodule