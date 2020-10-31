//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389

//Modulo Flipflop tipo D 1 BIT
module DFF1b(input clk, reset, E, D, output reg Q);

  always@(posedge clk, posedge reset, E)
    if (reset)  Q<=1'b0;
    else if (E) Q<=D;

endmodule


//Modulo Flipflop tipo JK 1 BIT
module JKFF1b(input clk2, reset2, J, K, E, output Qn, Qp, nK, nQp, w1, w2);

  not (nK, K);
  not (nQp, Qp);
  and (w1, nK, Qp);
  and (w2, nQp, J);
  or  (Qn, w1, w2);
  DFF1b D1(clk2, reset, E, Qn, Qp);

endmodule
