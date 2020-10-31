//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389


//Modulo Flipflop tipo D 1 BIT
module DFF1b(input clk, reset, E, D, output reg Q);

  always@(posedge clk, posedge reset, E)
    if (reset)  Q<=1'b0;
    else if (E) Q<=D;

endmodule


//Modulo Flipflop tipo T 1 BIT
module TFF1b(input clk, reset, E, output Q, QA);

  not (QA,Q);
  DFF1b D1(clk, reset, E, QA, Q);

endmodule
