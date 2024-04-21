module wrapper ( 	
	input logic [1:0] SW,
	input logic [0:0]KEY,
	output logic [4:0] LEDR);

	ex3 wrapp (.clk(KEY[0]),.rst(SW[0]),.w(SW[1]),.y(LEDR[4]),.temp(LEDR[3:0]));
endmodule 