"gran->sparse".postln;

Routine({
~sax_fx_1.set(\rate_low_gate, 0, \rate_high_gate, 0, \end_low_gate, 0, \end_high_gate, 0, \speed_time_gate, 0,\silence_time_gate, 0,\lag_env_gate, 0, \dust_gate, 0, \glitch_gate, 0);

s.sync;

~sax_fx_1.set(\gate, 1,

	//looping
	\startPos, 0, \startLoop, 0,
	\prelevel, 0.0,

	//rate
	\rate_low_gate, 1, \rate_low_time, ~sax_times[5], \rate_low_1, 2.0 ,\rate_low_2, 0.5,
	\rate_high_gate, 1, \rate_high_time, ~sax_times[5], \rate_high_1, 5.0, \rate_high_2, 5.0,

	//end
	\end_low_gate, 1, \end_low_time, ~sax_times[5], \end_low_1, 0.002 ,\end_low_2, 0.01,
	\end_high_gate, 1, \end_high_time, ~sax_times[5], \end_high_1, 0.3, \end_high_2, 0.5,

	\dust_low, 5, \dust_high, 2, \dust_gate, 1, \glitch_low, 1.0, \glitch_high, 1.0, \glitch_gate, 1,


	\speed_high_1, 10.0, \speed_high_2, 5.0, \speed_time, ~sax_times[5], \speed_time_gate, 1,
	\speed_low_1, 2.0, \speed_low_2,  1.0,

	\silence_high_1, 1.0, \silence_high_2, 1.0,
	\silence_low_1, 0.0, \silence_low_2, 0.2, \silence_time, ~sax_times[5], \silence_time_gate, 0,

	//lag
	\lag_env_gate, 1, \lag_weight_low, 3, \lag_weight_high, 7,
	\lag_low, 0.2, \lag_high, 1.0, \lag_env_time, ~sax_times[5], \rel,60,
	//silence
	\silence_wait, 3.0, \curve, 'sin'

);
}).play;




