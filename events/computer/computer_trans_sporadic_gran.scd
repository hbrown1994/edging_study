"sporadic->gran".postln;

~gran_dur = m[\granular][0].duration;

Routine({
	~bomb_gran_weight = [10, 0, 0];

~computer_routine = Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,
		\wait_low, Env([6.0, 0.1], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\wait_high, Env([13.0, 1.2], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\sus_low, Env([1.0, 0.005], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\sus_high, Env([3.0, 0.001], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\rel_low, Env([1.0, 0.005], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\rel_high, Env([0.1, 0.006], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\dur_low, Env([0.1, 0.001], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\dur_high, Env([1.2, 0.3], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

		\dur, Pseq([Pwhite(Pkey(\dur_low), Pkey(\dur_high), 10), Pwhite(Pkey(\wait_low), Pkey(\wait_low), 1)], inf),
		\atk, Pwhite(0.005, 0.2, inf),
		\sus,  Pseq([Pwhite(Pkey(\sus_low), Pkey(\sus_high), 10), Prand(Array.series(10, 0.005, 0.01), 1)], inf),

		\rel, Pseq([Pwhite(0.002, 0.006, 10), Prand(Array.series(10, 0.002, 0.01), 1)], inf),
		\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
		\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\bombastic][0], m[\granular][0], m[\end][2]], Pfunc({~bomb_gran_weight.normalizeSum}), inf),//negantive
		\rate, Pwrand(Array.series(25, -3, 0.1)++Array.series(25, 0.6, 0.1),  (Array.rand(50, 7, 10)).normalizeSum, inf),
		\spos, Pwhite(0, s.sampleRate*~gran_dur),
		\amp, Pfunc({~computer_sporadic_amp}),
		\loop, 1,
		\pan_pos, -1, // Pwhite(-1.0, 1.0),
		\low_pass_mix, 0,
		\low_pass_freq, 20000,
		\high_pass_mix, 1,
		\high_pass_freq, Env([30, 500], [~computer_times[3]], [\lin, \sin].choose),
		\out, ~computer_out, //currentEnvironment.at(("pattern_bus_"++~synth_counter.asString).asSymbol),
		//\group, ~pattern_node,
	);
).play(SystemClock);

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [9, 1, 1];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [8, 2, 1];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [7, 3, 1];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [6, 4, 2];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [5, 5, 2];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [4, 6, 3];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [3, 7, 3];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [2, 8, 4];

    (~computer_times[3]/11).wait;

	~bomb_gran_weight = [1, 9, 4];

	(~computer_times[3]/11).wait;

	~bomb_gran_weight = [0, 10, 5];


}).play(SystemClock);


