~tran_dur = m[\high_sine_end][1].duration;

Routine({

	~tran_gran_weight = [10, 0, 1].normalizeSum;


	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,

			\sus_low, Env([2.0, 0.2], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\sus_high, Env([6.0, 0.1], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rel_low, Env([8.0, 0.005], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rel_high, Env([12.0, 0.01], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\dur_low, Env([4.0, 0.5], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\dur_high, Env([7.0, 7.0], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\atk_low, Env([6.0, 0.001], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\atk_high, Env([10.0, 0.2], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rate_low, Env([0.95, 0.7], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rate_high, Env([1.05, 3.0], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\dur, Pwhite(Pkey(\dur_low), Pkey(\dur_high), inf),
			\atk, Pwhite(Pkey(\atk_low), Pkey(\atk_high), inf),
			\sus, Pwhite(Pkey(\sus_low), Pkey(\sus_high), inf),
			\rel, Pwhite(Pkey(\rel_low), Pkey(\rel_high), inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\high_sine_end][1], m[\granular][1], m[\end][3]], Pfunc({~tran_gran_weight}), inf),//negantive
			\rate, Pexprand(Pkey(\rate_low), Pkey(\rate_high), inf),
			\spos, Pwhite(0, (s.sampleRate*~tran_dur)),
			\pre_amp, Pfunc({~computer_trans_amp}),
			\amp, Pwhite(Pkey(\pre_amp), Pkey(\pre_amp)-12),
			\loop, 1,
			\pan_pos, -1,
			\low_pass_mix, 1,
			\low_pass_freq, 20000,
			\high_pass_mix, 1,
			\high_pass_freq, Env([2000, 1000], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\out, ~computer_out,
		);
	).play(SystemClock);

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [9, 1, 1].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [8, 2, 1].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [7, 3, 0.7].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [6, 4, 0.6].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [5, 5, 0.5].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [4, 6, 0.4].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [3, 7, 0.3].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [2, 8, 0.2].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [1, 9, 0.1].normalizeSum;

	(~computer_times[5]/11).wait;

	~tran_gran_weight = [0, 10, 0].normalizeSum;


}).play(SystemClock);

"tran->sparse".postln;