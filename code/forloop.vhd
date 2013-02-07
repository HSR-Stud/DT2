process
	begin
		for i in 0 to 9 loop
			...
			wait for sim_cyc;
		end loop;
	[wait;] -- Wird einmal abgehandelt
end process;