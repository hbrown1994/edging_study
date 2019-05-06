Routine({

	~gran_weight = [10, 10, 10, 10, 10, 10, 10, 1, 6].normalizeSum;

	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,
			\sus_low, Env([2.0, 0.5], [~computer_times[5]], [\lin, \sin].choose),
			\sus_high, Env([6.0, 0.1], [~computer_times[5]], [\lin, \sin].choose),

			\rel_high, Env([10.0, 0.005], [~computer_times[5]], [\lin, \sin].choose),


			\dur_low, Env([0.7, 0.2], [~computer_times[5]], [\lin, \sin].choose),
			\dur_high, Env([4.0, 8.0], [~computer_times[5]], [\lin, \sin].choose),


			\atk_high, Env([10.0, 0.2], [~computer_times[5]], [\lin, \sin].choose),

			\rate_low, Env([0.5, 1.0], [~computer_times[5]], [\lin, \sin].choose),

			\rate_high, Env([1.2, 3.0], [~computer_times[5]], [\lin, \sin].choose),


			\dur, Pexprand(Pkey(\dur_low), Pkey(\dur_high), inf),
			\atk, Pwhite(0.005, Pkey(\atk_high), inf),
			\sus, Pexprand(Pkey(\sus_low), Pkey(\sus_high), inf),
			\rel, Pwhite(0.001, Pkey(\rel_high), inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\buf, Pwrand([m[\pulse_poly][0], m[\pulse_poly][1], m[\pulse_poly][2],m[\pulse_poly][3],m[\pulse_poly][4],m[\pulse_poly][5],m[\pulse_poly][6], m[\granular][0], m[\end][1]], Pfunc({~gran_weight}), inf),//negantive
			\rate, Pexprand(Pkey(\rate_low), Pkey(\rate_high), inf),
			\spos, Pwhite(0, s.sampleRate*2),
			\amp, Pfunc({~computer_poly_amp}),
			\loop, 1,
			\pan_pos, -1, // Pwhite(-1.0, 1.0),
			\low_pass_mix, 0,
			\low_pass_freq, 20000,
			\high_pass_mix, 1,
			\high_pass_freq, Env([30, 1000], [~computer_times[5]], [\lin, \sin].choose),
			\out, ~computer_out, //currentEnvironment.at(("pattern_bus_"++~synth_counter.asString).asSymbol),
			//\group, ~pattern_node,
		);

	).play(SystemClock);


	(~computer_times[5]/10).wait;

	~gran_weight = [10, 10, 10, 10, 10, 10, 10, 1, 6].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [9, 9, 9, 9, 9, 9, 9, 2, 5].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [8, 8, 8, 8, 8, 8, 8, 3, 5].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [7, 7, 7, 7, 7, 7, 7, 4, 4].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [6, 6, 6, 6, 6, 6, 6, 5, 4].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [5, 5, 5, 5, 5, 5, 5, 6, 3].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [4, 4, 4, 4, 4, 4, 4, 7, 3].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [3, 3, 3, 3, 3, 3, 3, 8, 2].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [2, 2, 2, 2, 2, 2, 2, 9, 2].normalizeSum;

	(~computer_times[5]/10).wait;

	~gran_weight = [1, 1, 1, 1, 1, 1, 1, 10, 1].normalizeSum;


}).play(SystemClock);

"poly->sparse".postln;


