//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389

module testbench();

  reg clk, reset, J, K, E;
  wire Qn, Qp, nK, nQp, w1, w2;

  JKFF1b jkf1(clk, reset, J, K, E, Qn, Qp, nK, nQp, w1, w2);


  initial begin
     clk = 0;
     forever #1 clk = ~clk;
  end

  initial begin
    reset = 1;
    #1 reset = 0;
  end

  initial begin
    #1 E = 0; J = 0; K = 0;
    #1 E = 1; J = 0; K = 1;
    #1 E = 1; J = 0; K = 1;
    #1 E = 1; J = 0; K = 1;
    #1 E = 1; J = 0; K = 1;
    #1 E = 1; J = 1; K = 0;
    #1 E = 1; J = 1; K = 0;
    #1 E = 1; J = 1; K = 0;
    #1 E = 1; J = 1; K = 0;
    #1 E = 1; J = 0; K = 0;
    #1 E = 1; J = 0; K = 0;
    #1 E = 1; J = 0; K = 0;
    #1 E = 1; J = 0; K = 0;
    #1 E = 1; J = 1; K = 1;
    #1 E = 1; J = 1; K = 1;
    #1 E = 1; J = 1; K = 1;
    #1 E = 1; J = 1; K = 1;

  end

  initial
    #30 $finish;

  initial begin
    $dumpfile("jkff_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
