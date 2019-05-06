~pulse_gran_weight = [10, 0];

~pulse_loop_weight = [0, 10];

Routine({

	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,
			\sus_low, Env([~computer_times[5]/4, 0.2], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\sus_high, Env([~computer_times[5]/4, 0.1], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\dur_low, Env([~computer_times[5]/8,  0.5], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\dur_high, Env([~computer_times[5]/8, 6.0], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rel_high, Env([0.2, 1.3], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rate_low, Env([0.5, 1.0], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rate_high, Env([0.5, 10.0], [~computer_times[5]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\dur, Pwhite(Pkey(\dur_low), Pkey(\dur_high)),
			\atk, 0.005,
			\sus,  Pwhite(Pkey(\sus_low), Pkey(\sus_high)),
			\rel, Pwhite(0.005, Pkey(\rel_high), inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\pulse_2][1], m[\granular][0]], Pfunc({~pulse_gran_weight.normalizeSum}), inf),//negantive
			\rate, Pwhite(Pkey(\rate_low), Pkey(\rate_high)),
			\spos, 0,
			\pre_amp, Pfunc({~computer_pulse_amp }),
			\amp, Pwhite(Pkey(\pre_amp), Pkey(\pre_amp)-12),
			\loop, Pwrand([0, 1], Pfunc({~pulse_loop_weight.normalizeSum}), inf),
			\pan_pos, -1,
			\low_pass_mix, 0,
			\low_pass_freq, 20000,
			\high_pass_mix, 1,
			\high_pass_freq, Env([20, 1000], [~computer_times[5]], [\lin, \sin].choose),
			\out, ~computer_out,
		);
	).play(SystemClock);

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [9, 1];

	~pulse_loop_weight = [1, 9];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [8, 2];

	~pulse_loop_weight = [2, 8];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [7, 3];

	~pulse_loop_weight = [3, 7];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [6, 4];

	~pulse_loop_weight = [4, 6];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [5, 5];

	~pulse_loop_weight = [5, 5];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [4, 6];

	~pulse_loop_weight = [6, 4];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [3, 7];

	~pulse_loop_weight = [7, 3];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [2, 8];

	~pulse_loop_weight = [8, 2];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [1, 9];

	~pulse_loop_weight = [9, 1];

	(~computer_times[3]/11).wait;

	~pulse_gran_weight = [0, 10];

	~pulse_loop_weight = [10, 0];


}).play(SystemClock);

"pulse->sparse".postln;









