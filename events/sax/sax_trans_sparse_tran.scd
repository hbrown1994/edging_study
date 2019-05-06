"sparse->tran".postln;


Routine({
	~sax_fx_1.set(\rate_low_gate, 0, \rate_high_gate, 0, \end_low_gate, 0, \end_high_gate, 0, \speed_time_gate, 0,\silence_time_gate, 0,\lag_env_gate, 0, \dust_gate, 0, \glitch_gate, 0);

	~sax_fx_1.set(\gate, 1,

		//looping
		\startPos, 0, \startLoop, 0,
		\prelevel, 0.0,



		//rate
		\rate_low_gate, 1, \rate_low_time, ~sax_times[3], \rate_low_1, 0.8 ,\rate_low_2, 0.1,
		\rate_high_gate, 1, \rate_high_time, ~sax_times[3], \rate_high_1, 2.0, \rate_high_2, 1.0,

		//end
		\end_low_gate, 1, \end_low_time, ~sax_times[3], \end_low_1, 0.02 ,\end_low_2, 0.04,
		\end_high_gate, 1, \end_high_time, ~sax_times[3], \end_high_1, 0.5, \end_high_2, 0.6,


		\dust_low, 5, \dust_high, 20, \dust_gate, 1, \glitch_low, 1.0, \glitch_high, -1.0, \glitch_gate, 1,


		\speed_high_1, 5.0, \speed_high_2, 0.1, \speed_time, ~sax_times[3], \speed_time_gate, 1,
		\speed_low_1, 2.0, \speed_low_2,  0.1,

		\silence_high_1, 1.0, \silence_high_2, 1.0,
		\silence_low_1, 0.0, \silence_low_2, 0.0, \silence_time, ~sax_times[3], \silence_time_gate, 0,


		\delay_time, ~sax_times[3], \delay_low, -1.0, \delay_high, 1.0, \delay_gate, 1,
		\delay_times, Array.rand(2, 0.4, 1.9), \delay_levels, Array.rand(2, 0.8, 1.0),

		\ring_mod_low, 1.0, \ring_mod_high, -1.0, \ring_mod_time, ~sax_times[3], \ring_mod_gate, 1,

		//lag
		\lag_env_gate, 1, \lag_weight_low, 3, \lag_weight_high, 7,
		\lag_low, 2.0, \lag_high, 2.0, \lag_env_time, ~sax_times[3],
		//silence
		\silence_wait, 10.0, \curve, 'sin'

	);

}).play;

"sparse->tran".postln;