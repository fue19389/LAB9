//Univseridad del Valle de Guatemala
//Gerardo Fuentes
//19389


//Modulo Buffer triestado 4 bits
module buff4b(input E, input[3:0]D, output [3:0]Q);

  assign Q = E == 1 ? D:4'bz;

endmodule
