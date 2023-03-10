module mux(i_clk, i_data, i_ctrl, o_data);

input i_clk, i_ctrl;
input [1 : 0] i_data;
output reg o_data;

always @(posedge i_clk)begin
	if (i_ctrl)begin
		o_data <= i_data [1];
	end else o_data <= i_data [0];

end


endmodule