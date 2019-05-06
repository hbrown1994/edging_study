Routine({
	~poly_weight = [10, 1, 0.5, 0, 0, 0, 0, 0, 0, 0, 1].normalizeSum;

	s.sync;

	~computer_routine = Pdef(
		\computer_routine,
		Pbind(


			\instrument, \pattern_buf,
			\sus_low, Env([1.0, 3.0], [~computer_times[1]], -4),
			\sus_high, Env([3.0, 10.0], [~computer_times[1]], -4),

			\rel_low, Env([0.005, 0.005], [~computer_times[1]], -4),
			\rel_high, Env([0.005, 0.005], [~computer_times[1]], -4),

			\dur_low, Env([0.5, 1.0], [~computer_times[1]], -4),
			\dur_high, Env([1.0, 4.0], [~computer_times[1]], -4),

			\spos_env, Env([~bomb_dur, 1], [~computer_times[1]], -4),

			\rate_low, Env([1.0, 0.5], [~computer_times[1]], -4),

			\rate_high, Env([3.0, 1.2], [~computer_times[1]], -4),


			\dur, Pwhite(Pkey(\dur_low), Pkey(\dur_high), inf),
			\atk, Pwhite(0.005, 0.2, inf),
			\sus,  Pwhite(Pkey(\sus_low), Pkey(\sus_low), inf),
			\rel, Pwhite(Pkey(\rel_low), Pkey(\rel_high), inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\bombastic][0], m[\trans][0], m[\pulse_2][1], m[\pulse_poly][0], m[\pulse_poly][1], m[\pulse_poly][2],m[\pulse_poly][3],m[\pulse_poly][4],m[\pulse_poly][5],m[\pulse_poly][6], m[\end][1]], Pfunc({~poly_weight}), inf),//negantive
			\rate, Pwhite(Pkey(\rate_low), Pkey(\rate_high), inf),
			\spos, Pwhite(0, s.sampleRate*Pkey(\spos_env)),
			\amp, Pfunc({~computer_bomb_amp}),
			\loop, 1,
			\pan_pos, -1,
			\low_pass_mix, 1,
			\low_pass_freq, Env([20000, 8000], [~computer_times[3]], -4),
			\high_pass_mix, 1,
			\high_pass_freq,  Env([30, 500], [~computer_times[3]], -4),
			\out, ~computer_out,
		);
	).play(SystemClock);

	(~computer_times[1]/10).wait;

	~poly_weight = [9, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [8, 0.5, 3, 2, 2, 2, 2, 2, 2, 2, 1].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [7, 0, 3, 3, 3, 3, 3, 3, 3, 3, 2].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [6, 0, 3, 4, 4, 4, 4, 4, 4, 4, 2].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [5, 0, 4, 5, 5, 5, 5, 5, 5, 5, 3].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [4, 0, 4, 6, 6, 6, 6, 6, 6, 6, 3].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [3, 0, 4, 7, 7, 7, 7, 7, 7, 7, 4].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [2, 0, 5, 8, 8, 8, 8, 8, 8, 8, 4].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [1, 0, 6, 9, 9, 9, 9, 9, 9, 9, 5].normalizeSum;

	(~computer_times[1]/10).wait;

	~poly_weight = [0, 0, 7, 10, 10, 10, 10, 10, 10, 10, 5].normalizeSum;


}).play(SystemClock);


"bomb->poly".postln;