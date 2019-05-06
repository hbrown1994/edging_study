Routine({
	~drum_fx_1.set(\rate_low_gate, 0, \rate_high_gate, 0, \end_low_gate, 0, \end_high_gate, 0, \speed_time_gate, 0, \silence_time_gate, 0, \lag_env_gate, 0, \gran_gate, 0, \glitch_gate, 0, \dust_gate, 0);

	0.01.wait;

	~drum_fx_1.set(
		\gate, 1,

		//looping
		\startPos, 0, \startLoop, 0,
		\loopEnd_low, 0.02, \loopEnd_high, 2.0,
		\prelevel, 0.0,

		//rate
		\rate_low_gate, 0, \rate_low_time, ~drum_times[5], \rate_low_1, 2.0 ,\rate_low_2, 2.0,
		\rate_high_gate, 0, \rate_high_time, ~drum_times[5], \rate_high_1, 5.0, \rate_high_2, 5.0,

		//end
		\end_low_gate, 0, \end_low_time, ~drum_times[5], \end_low_1, 0.002 ,\end_low_2, 0.002,
		\end_high_gate, 0, \end_high_time, ~drum_times[5], \end_high_1, 0.3, \end_high_2, 0.3,




		//silence

		\dust_low, 2, \dust_high, 0.01, \dust_gate, 1, \glitch_low, -1.0, \glitch_high, -1.0, \glitch_gate, 0,


		\speed_high_1, 10.0, \speed_high_2, 10.0, \speed_time, ~drum_times[5], \speed_time_gate, 0,
		\speed_low_1, 2.0, \speed_low_2,  2.0,

		\silence_high_1, 0.7, \silence_high_2, 0.0,
		\silence_low_1, 0.3, \silence_low_2, 1.0, \silence_time, ~drum_times[5], \silence_time_gate, 1,

		//lag
		\lag_env_gate, \lag_weight_low, 3, \lag_weight_high, 7,
		\lag_low, 0.2, \lag_high, 0.0, \lag_env_time, ~drum_times[5], \rel,60,
		//silence
		\silence_wait, 4.0, \curve, 'sin'
	);

}).play(SystemClock);

"gran->silence".postln;