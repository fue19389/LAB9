//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389


//Modulo Flipflop tipo D 1 BIT
module DFF1b(input clk, reset, E, D, output reg Q);

  always@(posedge clk, posedge reset, E)
    if (reset)  Q<=1'b0;
    else if (E) Q<=D;

endmodule


//Modulo Flipflop tipo D 2 BIT
module DFF2b(input clk2, reset2, E2, input[1:0] D2, output[1:0] Q2);

  DFF1b df1(clk2, reset2, E2, D2[1], Q2[1]);
  DFF1b df0(clk2, reset2, E2, D2[0], Q2[0]);

endmodule

//Modulo Flipflop tipo D 4 BIT
module DFF4b(input clk4, reset4, E4, input[3:0] D4, output[3:0] Q4);

  DFF2b df32(clk4, reset4, E4, D4[3:2], Q4[3:2]);
  DFF2b df10(clk4, reset4, E4, D4[1:0], Q4[1:0]);

endmodule
