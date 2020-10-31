//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389

module testbench();

  reg clk, reset, E;
  wire Q1, Q1A;


  TFF1b tf1(clk, reset, E, Q1, Q1A);


  initial begin
     clk = 0;
     forever #1 clk = ~clk;
  end

  initial begin
    reset = 1;
    #1 reset = 0;
  end

  initial begin
    #1 E = 0;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 1;
    #1 E = 0;
    #1 E = 0;
    #1 E = 0;
    #1 E = 0;
    #1 E = 0;
  end

  initial
    #30 $finish;

  initial begin
    $dumpfile("tff_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
