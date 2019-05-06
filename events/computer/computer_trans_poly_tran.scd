
Routine({

	~tran_weight = [10, 10, 10, 10, 10, 10, 10, 0, 5, 0].normalizeSum;

	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,

			\sus_low, Env([2.0, 2.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\sus_high, Env([6.0, 6.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rel_low, Env([0.005, 8.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rel_high, Env([10.0, 12.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\dur_low, Env([0.7, 4.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\dur_high, Env([4.0, 7.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\atk_low, Env([0.005, 6.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\atk_high, Env([4.0, 10.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rate_low, Env([1.0, 0.95], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rate_high, Env([3.0, 1.05], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\dur, Pwhite(Pkey(\dur_low), Pkey(\dur_high), inf),
			\atk, Pwhite(Pkey(\atk_low), Pkey(\atk_high), inf),
			\sus, Pwhite(Pkey(\sus_low), Pkey(\sus_high), inf),
			\rel, Pwhite(Pkey(\rel_low), Pkey(\rel_high), inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\pulse_poly][0], m[\pulse_poly][1], m[\pulse_poly][2],m[\pulse_poly][3],m[\pulse_poly][4],m[\pulse_poly][5],m[\pulse_poly][6], m[\high_sine_end][1], m[\end][1], m[\end][3]], Pfunc({~tran_weight}), inf),
			\rate, Pexprand(Pkey(\rate_low), Pkey(\rate_high), inf),
			\spos, 0,
			\amp, Pfunc({~computer_poly_amp}),
			\loop, 1,
			\pan_pos, -1,
			\low_pass_mix, 1,
			\low_pass_freq,  Env([8000, 20000], [~computer_times[5]], [\lin, \sin].choose),
			\high_pass_mix, 1,
			\high_pass_freq, Env([500, 2000], [~computer_times[5]], [\lin, \sin].choose),
			\out, ~computer_out,
		);
	).play(SystemClock);


	(~computer_times[3]/10).wait;

	~tran_weight = [9, 9, 9, 9, 9, 9, 1, 5, 0].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [8, 8, 8, 8, 8, 8, 8, 2, 5, 0].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [7, 7, 7, 7, 7, 7, 7,  3, 4, 0].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [6, 6, 6, 6, 6, 6, 6, 4, 4, 0.2].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [5, 0, 4, 5, 5, 5, 5,  5, 3, 0.2].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [4, 4, 4, 4, 4, 4, 4,  6, 3, 0.3].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [3, 3, 3, 3, 3, 3, 3, 7, 2, 0.4].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [2, 2, 2, 2, 2, 2, 2, 8, 2, 0.5].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [1, 1, 1, 1, 1, 1, 1, 9, 1, 0.6].normalizeSum;

	(~computer_times[3]/10).wait;

	~tran_weight = [0, 0, 0, 0, 0, 0, 0, 10, 0.4, 0.7].normalizeSum;

}).play(SystemClock);



"poly->tran".postln;