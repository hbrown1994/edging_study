~computer_routine_3 = Routine({

	/*________PART ONE_______________________________________________________________________________________________________________________________________*/


	~drum_timer_routine_9.play(SystemClock);
	~sax_timer_routine_9.play(SystemClock);

	{~computer_routine_3_1 = Synth(\playbuf, [\bufnum, m[\end][5] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_high_numBox.value, \loop, 0]).register}.defer;


	~drum_fx_3.set(\gate, 0);
	{~drum_fx_4 = 	Synth(\delay_sporadic_1, [
		\gate, 1,
		\audio_in, ~percussion_sends, \out, ~percussion_out,
		\pitchDispersion, 1.0,  \timeDispersion, 1.0, \size, 1.0,
		\pitch_low, 1.0, \pitch_high, 4.0,
		\trig_speed, 3, \trig_dev, 1.0,
		\onset_time, m[\end][5].duration.round/3 , \contin_time,m[\end][5].duration.round/3,
		\term_time, m[\end][5].duration.round/3,

		\pitch_low_gate, 1,
		\pitch_low_low, 1.0, \pitch_low_med, 0.9, \pitch_low_high, 0.8,

		\pitch_high_gate, 1,
		\pitch_high_low, 1.0, \pitch_high_med, 2.0, \pitch_high_high, 2.0,

		\timeDispersion_gate, 1,
		\timeDispersion_low, 0.0, \timeDispersion_med, 0.005, \timeDispersion_high, 0.01,

		\pitchDispersion_gate, 1,
		\pitchDispersion_low, 0.0,  \pitchDispersion_med, 0.005, \pitchDispersion_high, 0.01, \amp, -3,
	    \rel, m[\end][4].duration.round/2,


	], ~fxs).register;}.defer;

	(m[\end][5].duration.round).asInt.wait;

	/*________PART TWO____________________________________________________________________________________________________________________________________________________*/

	~drum_timer_routine_9.stop;
	~sax_timer_routine_9.stop;

	~drum_timer_routine_10.play(SystemClock);
	~sax_timer_routine_10.play(SystemClock);

	~computer_routine_3_1.set(\gate, 0, \rel, 5);

	{~computer_routine_3_2 = Synth(\playbuf, [\bufnum, m[\end][4] ,\out, ~computer_out, \gate, 1, \atk, (m[\end][4].duration.round/4)*3, \rel, 0.005, \amp, ~playback_3_melody_numBox.value, \loop, 0]).register}.defer;

	{~sax_fx_4 = Synth(\harm_delay,
		[
			\gate, 1, \amp, ~sax_fx_4_numBox.value,
			\time, m[\end][1].duration.round,
			\input, ~sax_sends, \out, ~sax_out,
			\delayfactor, 0.0001, \mul, 1,
			\atk, (m[\end][4].duration.round/4)*2, \rel, 0.01,
			\shift_speed_low, 0.5, \shift_speed_high, 10.0,
			\pitch_dis, 0.0, \time_dis,  0.0,
			\pitch_low, 0.6, \pitch_high, 3.0,
			\size, 0.1, \hpf_freq,  200, \out, ~sax_out,

	], ~fxs).register}.defer;


	~drum_fx_4.set(\gate, 0);

	(m[\end][4].duration.round).asInt.wait;


	/*________PART THREE__________________________________________________________________________________________*/


	~drum_timer_routine_10.stop;
	~sax_timer_routine_10.stop;


	~drum_timer_routine_11.play(SystemClock);
	~sax_timer_routine_11.play(SystemClock);

	~computer_routine_3_2.set(\gate, 0);

	~sax_fx_4.set(\gate, 0, \rel, 0.01);


	{~drum_fx_5 = Synth(\concat,
		[
			\out, ~computer_out,  \bufnum, m[\end][2], \amp, ~playback_3_concat_numBox.value,
			\input_1, ~percussion_sends, \input_2, ~sax_sends,
			\atk, 0.01, \rel, 0.01, \gate, 1,
			\storesize, m[\end][2].duration, \seektime, m[\end][2].duration, \seekdur, m[\end][2].duration, \length, 0.05

	], ~fxs).register}.defer;



	{~sax_fx_5 = Synth(\loop_glitch_stereo,
		[\gate, 1,


			\ring_mod_low, -1.0, \ring_mod_high, 1.0, \ring_mod_gate, 0,
			\amp, ~sax_fx_5_numBox.value,

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
			\lag_low, 5.0, \lag_high, 5.0, \lag_env_time, 30, \rel,60,
			//silence
			\silence_wait, 4.0, \curve, 'sin'

		],
		~fxs).register}.defer;

	"sporadic".postln;


	~noise_section.asInt.wait;

	~drum_timer_routine_11.stop;
	~sax_timer_routine_11.stop;

	~sax_fx_5.set(\gate, 0, \rel, 0.01);
	~drum_fx_5.set(\gate, 0, \rel, 0.01);

	~drum_timer_routine_11_5.play(SystemClock);
	~sax_timer_routine_11_5.play(SystemClock);

	~guitar_solo.asInt.wait;

	~drum_timer_routine_11_5.stop;
	~sax_timer_routine_11_5.stop;

	~drum_timer_routine_12.play(SystemClock);
	~sax_timer_routine_12.play(SystemClock);

	{~computer_routine_3_4 = Synth(\playbuf, [\bufnum, m[\end][3], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_bass_numBox.value, \loop, 0]).register}.defer;

	(m[\end][3].duration).wait;

	1.wait;

	~computer_routine_3_4.set(\gate, 0);

	/*________PART Five___________________________________________________________________________________________________*/


	/*________END___________________________________________________________________________________________________*/


	"done".postln;

}).play(SystemClock);
