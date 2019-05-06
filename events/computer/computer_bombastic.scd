~bomb_dur = m[\bombastic][0].duration;

~computer_routine =  Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,
		\dur, Pif(Ptime(inf) < 1.0, 0.05, Pexprand(1.2, 0.5)),
		\atk, Pif(Ptime(inf) < 1.0, 0.005, Pwrand([0.005, 0.5, 1, 2, 4, 6, 8], ([10, 8, 8, 8, 6, 4, 2].normalizeSum), inf)),
		\rel, 0.005,
		\sus, Pwhite(0.01, 2.0),
		\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
		\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
		\buf, Pwrand([m[\bombastic][0], m[\trans][0], m[\pulse_2][1]], [10, 1, 0].normalizeSum, inf),//negantive
		\rate, Pxrand(Array.series(25, -3.4, 0.1)++Array.series(25, 1, 0.1), inf),
		\spos, Pwhite(0, s.sampleRate*~bomb_dur),
		\amp, Pfunc({~computer_bomb_amp}),
		\loop, 1,
		\pan_pos,-1, //Pwhite(-1.0, 1.0),
		\low_pass_mix, 0,
		\low_pass_freq, 20000,
		\high_pass_mix, 1,
		\high_pass_freq, 30,
		\out, ~computer_out,
	);
).play(SystemClock);

"bombastic".postln;

