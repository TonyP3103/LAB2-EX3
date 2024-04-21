module shift (
					output logic [3:0] L,
					input logic clk,rst,x);

D_ff (clk,rst,x,L[0]);
D_ff (clk,rst,L[0], L[1]);
D_ff (clk,rst,L[1],L[2]);
D_ff (clk,rst,L[2],L[3]);


endmodule 




module D_ff (input logic clk,rst,d,	
				output logic q);
				
always_ff @(posedge clk,negedge rst) begin
	if (!rst) 
		q <= '0;
	else 
		q <= d;
	end 
	endmodule 