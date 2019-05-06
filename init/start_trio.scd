Routine({

	~clock.set(\min, 35, \max, 3500, \reset, 1, \clock_speed, 10);

	s.sync;

	~macro_routines[\computer_routine_1].value;

	~drum_timer_routine_0.play(SystemClock);

	~sax_timer_routine_0.play(SystemClock);

}).play(SystemClock);