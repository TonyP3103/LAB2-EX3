module ex3 ( 
	input logic w,clk,rst,
	output logic [3:0] temp,
	output logic y);
	
	
shift shift1 (.clk(clk),.rst(rst),.x(w),.L(temp));



always_ff @(temp) begin

	 case (temp) 
				4'b1111: y <= 1'b1;
				4'b0000: y <= 1'b1;
				default: y <= 1'b0;
				
	endcase 
end 
		endmodule 
		