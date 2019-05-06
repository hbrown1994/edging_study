

{~drum_fx_1 = Synth(\loop_glitch,
	[\gate, 1,

		//looping
		\startPos, 0, \startLoop, 0,
		\loopEnd_low, 0.02, \loopEnd_high, 2.0,
		\prelevel, 0.0,

		//rate
		\rate_low_gate, 0, \rate_low_time, 30, \rate_low_1, 0.8 ,\rate_low_2, 0.2,
		\rate_high_gate, 0, \rate_high_time, 30, \rate_high_1, 2.0, \rate_high_2, 0.5,

		//end
		\end_low_gate, 0, \end_low_time, 30, \end_low_1, 0.02 ,\end_low_2, 1.0,
		\end_high_gate, 0, \end_high_time, 30, \end_high_1, 0.5, \end_high_2, 2.0,

	 	\speed_high_1, 0.5, \speed_high_2, 1, \speed_time, 1, \speed_time_gate, 0,
	    \speed_low_1, 1, \speed_low_2, 1,


		//routing
		\onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out,

		\dust_low, 20, \dust_high, 2, \dust_gate, 0, \glitch_low, -1.0, \glitch_high, 1.0, \glitch_gate, 0,

		//silence
		\silence_high_1, 1.0, \silence_high_2, 1.0,
		\silence_low_1, 0.0, \silence_low_2, 0.0, \silence_time, 1, \silence_time_gate, 0,

		\delay_low, -1.0, \delay_high, -1.0, \delay_gate, 0,

		\ring_mod_low, -1.0, \ring_mod_high, 1.0, \ring_mod_gate, 0,

		//lag
		\lag_env_gate, 0, \lag, 6.0, \lag_weight_low, 3, \lag_weight_high, 7,
		\lag_low, 0.0, \lag_high, 5.0, \lag_env_time, 30, \rel,60,
		//silence
		\silence_wait, 4.0, \curve, 'sin', \amp, ~drum_fx_1_numBox.value,

	],
	~fxs).register}.defer;

"sparse".postln;