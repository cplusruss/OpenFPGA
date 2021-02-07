module tb();
	reg clk;
	reg reset;
	reg a;
	reg b;

	wire inv;

	//Device under test
	dut _dut(
		.clk(clk),
		.reset(reset),
		.a(a),
		.b(b)
	);

	dut2 _dut2 (.a(a), .b(inv));

	initial begin
		clk = 0;
		reset = 1;
		#2;
		reset = 0;

		a = 1;
		#5;
		a = 0;

		//Time for simulation
		#20
		$finish;
	end

	always  #1 clk = ~clk;

	//For Icarus Verilog
	initial begin
		$dumpfile("out.vcd");
		$dumpvars();
	end
	

endmodule
