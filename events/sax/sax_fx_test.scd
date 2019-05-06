if(~sax_fx_test_select_button.value == 0, {~sax_state[\sporadic].value}, {nil});

if(~sax_fx_test_select_button.value == 1,
	{~sax_fx_2 = Synth(\diode, [
	\input, ~sax_sends, \out, ~sax_out,
	\amp, ~sax_fx_2_numBox.value,
	\pitch_low, 80, \pitch_high, 200, \mod_speed, 0.1,
	\atk, 0.01, \sus, 1, \rel, 0.01, \gate, 1,
], ~fxs).register}, {nil});

if(~sax_fx_test_select_button.value == 2,
	{~sax_fx_3 = Synth(\long_delay_1, [\silence_wait_thresh, 0.2, \silence_wait_time, 1, \grain_speed, 7, \trig_speed, 20, \hpf_freq, 100, \input, ~sax_sends, \out, ~sax_out, \thresh, 0.2, \amp, (-6), \atk, 0.01, \rel, 0.01, \gate, 1], target:~fxs).register}, {nil});



if(~sax_fx_test_select_button.value == 3,
	{~sax_fx_4 = Synth(\harm_delay,
	[
		\gate, 1, \amp, ~sax_fx_4_numBox.value,
		\time, 10,
		\input, ~sax_sends, \out, ~sax_out,
		\delayfactor, 0.0001, \mul, 1,
		\atk, 0.01, \rel, 0.01,
		\shift_speed_low, 0.5, \shift_speed_high, 10.0,
		\pitch_dis, 0.0, \time_dis,  0.0,
		\pitch_low, 0.6, \pitch_high, 3.0,
		\size, 0.1, \hpf_freq,  200,

], ~fxs).register}, {nil});

if(~sax_fx_test_select_button.value == 4,
	{~sax_fx_5 = Synth(\loop_glitch_stereo,
	[\gate, 1,


		\ring_mod_low, -1.0, \ring_mod_high, 1.0, \ring_mod_gate, 0,
		\amp, ~sax_fx_1_numBox.value,

		//looping
		\startPos, 0, \startLoop, 0,
		\loopEnd_low, 0.02, \loopEnd_high, 2.0,
		\prelevel, 0.0,

		//rate
		\rate_loaw_gate, 0, \rate_low_time, 30, \rate_low_1, 0.5 ,\rate_low_2, 0.2,
		\rate_high_gate, 0, \rate_high_time, 30, \rate_high_1, 4.0, \rate_high_2, 0.5,

		//end
		\end_low_gate, 0, \end_low_time, 30, \end_low_1, 0.002 ,\end_low_2, 1.0,
		\end_high_gate, 0, \end_high_time, 30, \end_high_1, 0.1, \end_high_2, 2.0,

	 	\speed_high_1, 20.0, \speed_high_2, 1, \speed_time, 1, \speed_time_gate, 0,
	    \speed_low_1, 3.0, \speed_low_2, 1,

		\audio_in_1, ~percussion_sends,  \audio_in_2,~sax_sends,

		\thresh, ~percussion_onset_numBox.value,

		\pan_speed, 20,


		\dust_low, 20, \dust_high, 20, \dust_gate, 1, \glitch_low, 1.0, \glitch_high, 1.0, \glitch_gate, 1,

		//silence
		\silence_high_1, 1.0, \silence_high_2, 1.0,
		\silence_low_1, 0.0, \silence_low_2, 0.0, \silence_time, 1, \silence_time_gate, 0,

		\delay_low, -1.0, \delay_high, -1.0, \delay_gate, 0,

		//lag
		\lag_env_gate, 0,  \lag_weight_low, 3, \lag_weight_high, 7,
		\lag_low, 5.0, \lag_high, 5.0, \lag_env_time, 30, \rel,60, \out, ~sax_out,
		//silence
		\silence_wait, 4.0, \curve, 'sin'

	],
	~fxs).register}, {nil});


