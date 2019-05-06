~tran_dur = m[\high_sine_end][1].duration;

~computer_routine = Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,
		\dur, Pwhite(4.0, 7.0, inf),
		\atk, Pwhite(6.0, 10.0, inf),
		\sus, Pwhite(2.0, 6.0, inf),
		\rel, Pwhite(8.0, 12.0, inf),
		\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
		\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
		\buf, Pif(Ptime(inf) < 1, m[\high_sine_end][1], Pwrand([m[\high_sine_end][1], m[\end][3]], [10, 1].normalizeSum, inf)),
		\rate, Pexprand(0.95, 1.05, inf),
		\spos, Pwhite(0, s.sampleRate*~tran_dur),
		\pre_amp, Pfunc({~computer_trans_amp}),
		\amp, Pwhite(Pkey(\pre_amp), Pkey(\pre_amp)-12),
		\loop, 1,
		\pan_pos, -1,
		\low_pass_mix, 1,
		\low_pass_freq, 20000,
		\high_pass_mix, 1,
		\high_pass_freq, 2000,
		\out, ~computer_out,
	);
).play(SystemClock);

"tran".postln;