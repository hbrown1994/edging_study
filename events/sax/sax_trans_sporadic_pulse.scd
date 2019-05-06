
Routine({

	~sax_fx_1.set(\rate_low_gate, 0, \rate_high_gate, 0, \end_low_gate, 0, \end_high_gate, 0, \speed_time_gate, 0, \dust_gate, 0, \glitch_gate, 0, \silence_time_gate, 0, \delay_gate, 0, \lag_env_gate, 0);

	s.sync;

	~sax_fx_1.set(
		\startPos, 0, \startLoop, 0,
		\loopEnd_low, 0.02, \loopEnd_high, 2.0,
		\prelevel, 0.0,

		//rate
		\rate_low_gate, 1, \rate_low_time, ~sax_times[1], \rate_low_1, 0.05 ,\rate_low_2, 2.5,
		\rate_high_gate, 1, \rate_high_time, ~sax_times[1], \rate_high_1, 3.0, \rate_high_2, 2.5,

		//end
		\end_low_gate, 1, \end_low_time, ~sax_times[1], \end_low_1, 0.002 ,\end_low_2, 2.0,
		\end_high_gate, 1, \end_high_time, ~sax_times[1], \end_high_1, 0.1, \end_high_2, 2.0,

		\speed_high_1, 20.0, \speed_high_2, 1, \speed_time, 1, \speed_time_gate, 1,
		\speed_low_1, 4.0, \speed_low_2, 1,

		\dust_low, 20, \dust_high, 2, \dust_gate, 0, \glitch_low, -1.0, \glitch_high, 1.0, \glitch_gate, 0,

		//silence
		\silence_high_1, 1.0, \silence_high_2, 1.0,
		\silence_low_1, 0.0, \silence_low_2, 0.0, \silence_time, 1, \silence_time_gate, 0,

		\single_delay_time, ~sax_times[1], \single_delay_gate, 1,  \single_delay_low, -1.0, \single_delay_high, 1.0,
		\single_delay_factor, 0.3,



		\delay_time, ~sax_times[1], \delay_low, 1.0, \delay_high, -1.0, \delay_gate, 1,
		\delay_times, Array.rand(3, 0.4, 1.9), \delay_levels, Array.rand(3, 0.8, 1.0),

		//lag
		\lag_env_gate, 1, \lag, 6.0, \lag_weight_low, 3, \lag_weight_high, 7,
		\lag_low, 5.0, \lag_high, 2.0, \lag_env_time, ~sax_times[1], \rel,60,
		//silence
		\silence_wait, 40.0, \curve, 'sin'
	);

}).play(SystemClock);

"poly->pulse".postln;



"sporadic->pulse".postln;