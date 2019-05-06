
~gran_dur = m[\granular][0].duration;

~computer_routine = Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,

		\sus_low, Env([0.005, 0.2], [~computer_times[5]], -4),
		\sus_high, Env([0.05, 0.1], [~computer_times[5]], -4),

		\rel_high, Env([0.2, 1.3], [~computer_times[5]], -4),


		\dur_low, Env([0.005, 0.5], [~computer_times[5]], -4),
		\dur_high, Env([0.5, 10.0], [~computer_times[5]], -4),


		\dur, Pexprand(Pkey(\dur_low), Pkey(\dur_high), inf),
		\atk, Pwhite(0.001, 0.2, inf),
		\sus, Pwrand([Pwhite(Pkey(\sus_low), Pkey(\sus_high), inf), Pwhite(0.3, 1, inf)], [9, 1].normalizeSum, inf),
		\rel, Pwhite(0.005, Pkey(\rel_high), inf),
		\c1, Pwrand(Array.series(8, 1, 1), Array.rand(8, 4, 9).normalizeSum, inf),
		\c2, Pwrand(Array.series(8, -1, -1), Array.rand(8, 4, 9).normalizeSum, inf), //negantive
		\buf, Pwrand([m[\granular][0], m[\granular][1], m[\end][2]], [10, 6, 4].normalizeSum, inf),//negantive
		\rate, Pwrand(Array.series(50, -6, 0.1)++Array.series(50, 1, 0.1),  (Array.rand(100, 7, 10)).normalizeSum, inf),
		\spos, Pwhite(0, s.sampleRate*~gran_dur),
		\pre_amp, Pfunc({~computer_gran_amp}),
		\amp, Pwhite(Pkey(\pre_amp), Pkey(\pre_amp)-12),
		\loop, 1,
		\pan_pos, -1, // Pwhite(-1.0, 1.0),
		\low_pass_mix, 0,
		\low_pass_freq, 20000,
		\high_pass_mix, 1,
		\high_pass_freq, Env([1000, 2000], [~computer_times[5]], -4),
		\out, ~computer_out, //currentEnvironment.at(("pattern_bus_"++~synth_counter.asString).asSymbol),
		//\group, ~pattern_node,
	);
).play(SystemClock);

"gran->sparse".postln;