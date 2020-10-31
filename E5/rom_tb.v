//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

module testbench();

  reg ren, cen;
  reg[6:0] adrs;
  wire[12:0] data;

  romcs rcase(adrs, data);

  initial begin
    #1  adrs = 7'b??????0;
    #1  adrs = 7'b1111110;
    #1  adrs = 7'b00001?1;
    #1  adrs = 7'b0000111;
    #1  adrs = 7'b00000?1;
    #1  adrs = 7'b0000001;
    #1  adrs = 7'b00011?1;
    #1  adrs = 7'b0001101;
    #1  adrs = 7'b00010?1;
    #1  adrs = 7'b0001011;
    #1  adrs = 7'b0010??1;
    #1  adrs = 7'b0011??1;
    #1  adrs = 7'b0100??1;
    #1  adrs = 7'b0101??1;
    #1  adrs = 7'b0110??1;
    #1  adrs = 7'b0111??1;
    #1  adrs = 7'b1000?11;
    #1  adrs = 7'b1000?01;
    #1  adrs = 7'b1001?11;
    #1  adrs = 7'b1001?01;
    #1  adrs = 7'b1010??1;
    #1  adrs = 7'b1011??1;
    #1  adrs = 7'b1100??1;
    #1  adrs = 7'b1101??1;
    #1  adrs = 7'b1110??1;
    #1  adrs = 7'b1111??1;

  end

initial begin
  $dumpfile("rom_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
