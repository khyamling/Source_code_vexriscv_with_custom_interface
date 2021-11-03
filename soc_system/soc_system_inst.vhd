	component soc_system is
		port (
			button_pio_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			clk_clk           : in  std_logic                    := 'X';             -- clk
			led_pio_export    : out std_logic_vector(3 downto 0);                    -- export
			reset_reset_n     : in  std_logic                    := 'X';             -- reset_n
			switch_pio_export : in  std_logic_vector(2 downto 0) := (others => 'X')  -- export
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			button_pio_export => CONNECTED_TO_button_pio_export, -- button_pio.export
			clk_clk           => CONNECTED_TO_clk_clk,           --        clk.clk
			led_pio_export    => CONNECTED_TO_led_pio_export,    --    led_pio.export
			reset_reset_n     => CONNECTED_TO_reset_reset_n,     --      reset.reset_n
			switch_pio_export => CONNECTED_TO_switch_pio_export  -- switch_pio.export
		);

