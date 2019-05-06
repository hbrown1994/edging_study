Routine({
	~computer_routine = Pdef(
		\computer_routine,
		Pbind(
			\instrument, \pattern_buf,
			\dur, Pwhite(4.0, 6.0, inf),
			\atk, Pwhite(0.005, 4.0, inf),
			\sus,  Pwhite(3.0, 10.0, inf),
			\rel, Pwhite(0.005, 0.008, inf),
			\c1, Pwrand(Array.series(8, 1, 1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf),
			\c2, Pwrand(Array.series(8, -1, -1), [1, 1, 1, 4, 3, 2, 1, 4].normalizeSum, inf), //negantive
			\buf, Pwrand([m[\pulse_poly][0], m[\pulse_poly][1], m[\pulse_poly][2],m[\pulse_poly][3],m[\pulse_poly][4],m[\pulse_poly][5],m[\pulse_poly][6], m[\pulse_2][1], m[\end][1]], [1, 0.5, 6, 1, 1, 1, 1, 0.5, 0.5].normalizeSum, inf),//negantive
			\rate, Pwhite(0.6, 1.2, inf),
			\spos, Pwhite(0, s.sampleRate*2),
			\amp, Pfunc({~computer_poly_amp}),
			\loop, 1,
			\pan_pos,-1,
			\low_pass_mix, 1,
			\low_pass_freq, 8000,
			\high_pass_mix, 1,
			\high_pass_freq, 500,
			\out, ~computer_out,
		);
	).play(SystemClock);

	(~computer_times[2]/2).wait;

	{~pulse = Synth(\playbuf, [\rate, 0.5, \bufnum, m[\pulse_2][1],\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~computer_pulse_amp]).register}.defer;




}).play(SystemClock);

"poly".postln;