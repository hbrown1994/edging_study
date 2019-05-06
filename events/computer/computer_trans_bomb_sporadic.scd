
~computer_routine = Pdef(
	\computer_routine,
	Pbind(
		\instrument, \pattern_buf,
		\wait_low, Env([0.1, 4.0], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\wait_high, Env([2.0, 11.0], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\sus_low, Env([0.1, 2.0], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\sus_high, Env([4.0, 6.0], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\rel_low, Env([0.4, 0.005], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\rel_high, Env([0.1, 0.006], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\dur_low, Env([0.7, 1.2], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\dur_high, Env([0.2, 0.3], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\dur, Pseq([Pwhite(Pkey(\dur_low), Pkey(\dur_high), 10), Pwhite(Pkey(\wait_low), Pkey(\wait_high), 1)], inf),
		\atk, Pwhite(0.005, 0.2, inf),
		\sus,  Pseq([Pwhite(Pkey(\sus_low), Pkey(\sus_low), 10), Prand(Array.series(10, 0.005, 0.01), 1)], inf),
		\rel, Pseq([Pwhite(Pkey(\rel_low), Pkey(\rel_high), 10), Prand(Array.series(10, 0.005, 0.01), 1)], inf),
		\c1, 4,
		\c2, -4,
		\buf, Pwrand([m[\bombastic][0], m[\trans][0], m[\pulse_2][1]], [10, 1, 0.5].normalizeSum, inf),//negantive
		\rate, Pwrand(Array.series(25, -3, 0.1)++Array.series(25, 0.6, 0.1),  (Array.rand(50, 7, 10)).normalizeSum, inf),
		\spos, Pwhite(0, s.sampleRate*~bomb_dur),
		\amp, Pfunc({~computer_bomb_amp}),
		\loop, 1,
		\pan_pos, -1,
		\low_pass_mix, 0,
		\low_pass_freq, Env([21000, 8000], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\high_pass_mix, 1,
		\high_pass_freq, Env([30, 500], [~computer_times[1]], [\lin, \sin, \wel, \sqr, \cub].choose),
		\out, ~computer_out,
	);
).play(SystemClock);

"bomb->sporadic".postln;

