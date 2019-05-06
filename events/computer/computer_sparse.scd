
~gran_dur = m[\granular][0].duration;

~computer_routine = Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,
		\dur, Pexprand(0.2, 6.0, inf),
		\atk, Pwhite(0.001, 0.2, inf),
		\sus, Pwrand([Pwhite(0.2, 0.1, inf), Pwhite(0.3, 1, inf)], [9, 1].normalizeSum, inf),
		\rel, Pwhite(0.005, 0.2, inf),
		\c1, Pwrand(Array.series(8, 1, 1), Array.rand(8, 4, 9).normalizeSum, inf),
		\c2, Pwrand(Array.series(8, -1, -1), Array.rand(8, 4, 9).normalizeSum, inf), //negantive
		\buf, Pwrand([m[\granular][0], m[\granular][1]], [11, 0.5].normalizeSum, inf),//negantive
		\rate, Pwrand(Array.series(50, -6, 0.1)++Array.series(50, 1, 0.1),  (Array.rand(100, 7, 10)).normalizeSum, inf),
		\spos, Pwhite(0, s.sampleRate*~gran_dur),
		\pre_amp, Pfunc({~computer_sparse_amp}),
		\amp, Pwhite(Pkey(\pre_amp), Pkey(\pre_amp)-12),
		\loop, 1,
		\pan_pos, -1, // Pwhite(-1.0, 1.0),
		\low_pass_mix, 0,
		\low_pass_freq, 20000,
		\high_pass_mix, 1,
		\high_pass_freq, 1000,
		\out, ~computer_out, //currentEnvironment.at(("pattern_bus_"++~synth_counter.asString).asSymbol),
		//\group, ~pattern_node,
	);
).play(SystemClock);

"gran->sparse".postln;


"sparse".postln;