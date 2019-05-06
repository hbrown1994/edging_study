~computer_routine = Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,
		\dur, ~computer_times[1],
		\atk, 0.005,
		\sus,  ~computer_times[1],
		\rel, 0.005,
		\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
		\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
		\buf, m[\pulse_2][1],
		\rate, 0.5,
		\spos, 0,
		\pre_amp, Pfunc({~computer_pulse_amp + 6}),
		\amp, Pwhite(Pkey(\pre_amp), Pkey(\pre_amp)-12),
		\loop, 1,
		\pan_pos, -1,
		\low_pass_mix, 0,
		\low_pass_freq, 20000,
		\high_pass_mix, 0,
		\high_pass_freq, 30,
		\out, ~computer_out,
	);
).play(SystemClock);





"pulse".postln;