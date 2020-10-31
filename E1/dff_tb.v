//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389

module testbench();

  reg clk, reset, D1, E;
  reg[1:0] D2;
  reg[3:0] D4;
  wire Q1;
  wire[1:0] Q2;
  wire[3:0] Q4;

  DFF1b Df1(clk, reset, E, D1, Q1);
  DFF2b Df2(clk, reset, E, D2, Q2);
  DFF4b Df4(clk, reset, E, D4, Q4);

  initial begin
     clk = 0;
     forever #1 clk = ~clk;
  end

  initial begin
    reset = 1;
    #1 reset = 0;
  end

  initial begin
    #1 E = 0; D1 = 0; D2 = 2'b00; D4 = 4'b0000;
    #1 E = 1; D1 = 1; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 1; D1 = 1; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 1; D1 = 0; D2 = 2'b00; D4 = 4'b0000;
    #1 E = 1; D1 = 0; D2 = 2'b00; D4 = 4'b0000;
    #1 E = 1; D1 = 1; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 1; D1 = 1; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 0; D1 = 0; D2 = 2'b00; D4 = 4'b0000;
    #1 E = 0; D1 = 0; D2 = 2'b00; D4 = 4'b0000;
    #1 E = 0; D1 = 1; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 0; D1 = 1; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 0; D1 = 0; D2 = 2'b01; D4 = 4'b0001;
    #1 E = 0; D1 = 0; D2 = 2'b01; D4 = 4'b0001;

  end

  initial
    #10 $finish;

  initial begin
    $dumpfile("dff_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
