Routine({

	~pulse_weight = [10, 10, 10, 10, 10, 10, 10, 1, 5].normalizeSum;

	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,
			\dur, Pwhite(0.7, 4.0, inf),
			\atk, Pwhite(0.005, 4.0, inf),
			\sus,  Pwhite(2.0, 6.0, inf),
			\rel, Pwhite(0.005, 10.0, inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\pulse_poly][0], m[\pulse_poly][1], m[\pulse_poly][2],m[\pulse_poly][3],m[\pulse_poly][4],m[\pulse_poly][5],m[\pulse_poly][6], m[\pulse_2][1], m[\end][1]], Pfunc({~pulse_weight}), inf),
			\rate, Pexprand(0.5, 1.2, inf),
			\spos, Pwhite(0, s.sampleRate*2),
			\amp, Pfunc({~computer_poly_amp}),
			\loop, 1,
			\pan_pos, -1,
			\low_pass_mix, 1,
			\low_pass_freq, 8000,
			\high_pass_mix, 1,
			\high_pass_freq,  Env([500, 30], [~computer_times[3]], [\lin, \sin, \wel, \sqr, \cub].choose),
			\out, ~computer_out,
		);

	).play(SystemClock);


	(~computer_times[3]/10).wait;

	~pulse_weight = [10, 10, 10, 10, 10, 10, 10, 5].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [9, 9, 9, 9, 9, 9, 9, 2, 5].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [8, 8, 8, 8, 8, 8, 8, 3, 4].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [7, 7, 7, 7, 7, 7, 7, 4, 3].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [6, 6, 6, 6, 6, 6, 6, 5, 3].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [5, 5, 5, 5, 5, 5, 5, 6, 2].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [4, 4, 4, 4, 4, 4, 4, 7, 2].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [3, 3, 3, 3, 3, 3, 3, 8, 1].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [2, 2, 2, 2, 2, 2, 2, 9, 1].normalizeSum;

	(~computer_times[3]/10).wait;

	~pulse_weight = [1, 1, 1, 1, 1, 1, 1, 10, 1].normalizeSum;


}).play(SystemClock);

"poly->pulse".postln;


