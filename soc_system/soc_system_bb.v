
module soc_system (
	button_pio_export,
	clk_clk,
	led_pio_export,
	reset_reset_n,
	switch_pio_export);	

	input	[3:0]	button_pio_export;
	input		clk_clk;
	output	[3:0]	led_pio_export;
	input		reset_reset_n;
	input	[2:0]	switch_pio_export;
endmodule
