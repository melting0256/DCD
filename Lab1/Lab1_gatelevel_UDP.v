primitive UDP_56791011131415(w2,A,B,w1,D);
  output w2;
  input A,B,w1,D;

  table
      0 0 0 0 : 0;
      0 0 0 1 : 0;
      0 0 1 0 : 0;
      0 0 1 1 : 0;
      0 1 0 0 : 0;
      0 1 0 1 : 1;
      0 1 1 0 : 1;
      0 1 1 1 : 1;
      1 0 0 0 : 0;
      1 0 0 1 : 1;
      1 0 1 0 : 1;
      1 0 1 1 : 1;
      1 1 0 0 : 0;
      1 1 0 1 : 1;
      1 1 1 0 : 1;
      1 1 1 1 : 1;
  endtable
endprimitive 
  
module Lab1_gatelevel_UDP (F,A,B,C,D);
  output F;
  input A,B,C,D;
  
  not (w1,C);
  UDP_56791011131415 M0 (w2,A,B,w1,D);
  or (w3,A,C);
  not (w4,B);
  and (w5,w3,w4);
  or (F,w2,w5);
endmodule 