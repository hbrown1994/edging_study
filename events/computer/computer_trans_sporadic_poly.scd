Routine({

	~poly_slience_weight = [10, 8, 1, 0.5, 0, 0, 0, 0, 0, 0, 0].normalizeSum;

	s.sync;

	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,


			\sus_low, Env([4.0, 3.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\sus_high, Env([8.0, 10.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rel_low, Env([1.0, 0.005], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\rel_high, Env([0.1, 5.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\dur_low, Env([0.01, 1.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\dur_high, Env([0.7, 7.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\wait_low, Env([6.0, 0.5], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\wait_high, Env([13.0, 3.0], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\spos_env, Env([~bomb_dur, 1], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rate_low, Env([1.0, 0.5], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\rate_high, Env([3.0, 1.2], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),

			\dur, Pseq([Pwhite(Pkey(\dur_low), Pkey(\dur_high), 10), Pwhite(Pkey(\wait_low), Pkey(\wait_high), 1)], inf),
			\atk, Pwhite(0.005, 0.2, inf),
			\sus,  Pwhite(Pkey(\sus_low), Pkey(\sus_low), inf),
			\rel, Pwhite(Pkey(\rel_low), Pkey(\rel_high), inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\bombastic][0], m[\silence][0], m[\trans][0], m[\pulse_2][1], m[\pulse_poly][0], m[\pulse_poly][1], m[\pulse_poly][2],m[\pulse_poly][3],m[\pulse_poly][4],m[\pulse_poly][5],m[\pulse_poly][6]], Pfunc({~poly_slience_weight}), inf),//negantive
			\rate, Pwhite(Pkey(\rate_low), Pkey(\rate_high), inf),
			\spos, Pwhite(0, s.sampleRate*Pkey(\spos_env)),
			\amp, Pfunc({~computer_sporadic_amp}),
			\loop, 1,
			\pan_pos, -1,
			\low_pass_mix, 1,
			\low_pass_freq, Env([20000, 8000], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\high_pass_mix, 1,
			\high_pass_freq,  Env([30, 500], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\out, ~computer_out,

		);
	).play(SystemClock);

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [9, 7, 1, 2, 1, 1, 1, 1, 1, 1, 1].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [8, 6, 0.5, 3, 2, 2, 2, 2, 2, 2, 2].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [7, 5, 0, 3, 3, 3, 3, 3, 3, 3, 3].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [6, 4, 0, 3, 4, 4, 4, 4, 4, 4, 4].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [5, 3, 0, 4, 5, 5, 5, 5, 5, 5, 5].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [4, 3, 0, 4, 6, 6, 6, 6, 6, 6, 6].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [3, 3, 0, 4, 7, 7, 7, 7, 7, 7, 7].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [2, 2, 0, 5, 8, 8, 8, 8, 8, 8, 8].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [1, 1, 0, 6, 9, 9, 9, 9, 9, 9, 9].normalizeSum;

	(~computer_times[3]/10).wait;

	~poly_slience_weight = [0, 0, 0, 7, 10, 10, 10, 10, 10, 10].normalizeSum;


}).play(SystemClock);


"sporadic->poly".postln;