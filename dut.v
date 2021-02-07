module dut (
	input clk,
	input reset,
	
	input a,
	input b
);

reg q;
reg [2:0] counter;
reg [3:0] sr;

reg [15:0] counter16;
reg [15:0] counter16_2;

always @(posedge clk) begin
	if (reset) begin
		q         <= 0;
		counter   <= 3'd0;
		counter16 <= 16'd0;
		counter16_2 <= 16'd0;
		sr        <= 4'd0;
	end
	else begin
		q         <= a;
		counter   <= counter + 3'd1;
		counter16 <= counter16 + 16'd1;
		counter16_2 <= counter16_2 + 16'd1;
		sr[3:0]   <= {sr[2:0], a};
	end
end

endmodule
