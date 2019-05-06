Routine({
~drum_fx_1.set(\rate_low_gate, 0, \rate_high_gate, 0, \end_low_gate, 0, \end_high_gate, 0,\speed_time_gate, 0, \silence_time_gate, 0, \lag_env_gate, 0);

0.01.wait;

~drum_fx_1.set(
	\gate, 1,

	//looping
	\startPos, 0, \startLoop, 0,
	\loopEnd_low, 0.02, \loopEnd_high, 2.0,
	\prelevel, 0.0,

	//rate
	\rate_low_gate, 1, \rate_low_time, ~drum_times[3], \rate_low_1, 0.05 ,\rate_low_2, 0.1,
	\rate_high_gate, 1, \rate_high_time, ~drum_times[3], \rate_high_1, 3.0, \rate_high_2, 0.5,

	//end
	\end_low_gate, 1, \end_low_time, ~drum_times[3], \end_low_1, 0.002 ,\end_low_2, 0.5,
	\end_high_gate, 1, \end_high_time, ~drum_times[3], \end_high_1, 0.5, \end_high_2, 2.0,


	//routing


	//silence


	\speed_high_1, 20.0, \speed_high_2, 5.0, \speed_time, ~drum_times[3], \speed_time_gate, 1,
	\speed_low_1, 4.0, \speed_low_2,  0.5,

	\silence_high_1, 1.0, \silence_high_2, 0.3,
	\silence_low_1, 0.0, \silence_low_2, 0.7, \silence_time, ~drum_times[3], \silence_time_gate, 1,

	//lag
	\lag_env_gate, 1, \lag, 6.0, \lag_weight_low, 3, \lag_weight_high, 7,
	\lag_low, 0.0, \lag_high, 2.0, \lag_env_time, ~drum_times[3], \rel,60,
	//silence
	\silence_wait, 4.0, \curve, 'sin'
);
}).play(SystemClock)