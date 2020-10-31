//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389

module testbench();

  reg E;
  reg[3:0]D;
  wire[3:0]Q;

  buff4b b4(E, D, Q);

  initial begin
    #1 E = 1; D = 4'b0000;
    #1 E = 1; D = 4'b0000;
    #1 E = 1; D = 4'b0000;
    #1 E = 1; D = 4'b0000;
    #1 E = 1; D = 4'b1000;
    #1 E = 1; D = 4'b1000;
    #1 E = 1; D = 4'b1000;
    #1 E = 1; D = 4'b1001;
    #1 E = 1; D = 4'b1001;
    #1 E = 1; D = 4'b1001;
    #1 E = 1; D = 4'b1111;
    #1 E = 1; D = 4'b1111;
    #1 E = 1; D = 4'b1111;
    #1 E = 1; D = 4'b1010;
    #1 E = 1; D = 4'b1010;
    #1 E = 1; D = 4'b1010;
    #1 E = 1; D = 4'b1100;
    #1 E = 1; D = 4'b1100;
    #1 E = 1; D = 4'b1100;
    #1 E = 1; D = 4'b1000;
    #1 E = 1; D = 4'b1000;
    #1 E = 0; D = 4'b1000;
    #1 E = 0; D = 4'b1100;
    #1 E = 0; D = 4'b1110;
    #1 E = 0; D = 4'b1111;
    #1 E = 0; D = 4'b1010;
  end

  initial
    #30 $finish;

  initial begin
    $dumpfile("buff_tb.vcd");
    $dumpvars(0, testbench);
  end

  endmodule
