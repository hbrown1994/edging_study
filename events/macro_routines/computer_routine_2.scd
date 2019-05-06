~computer_routine_2_sub = Routine({

	~silence_wait.wait;
	~computer_times_2[0].wait;

	~computer_routine.stop;

	~computer_sub_times_2[0].wait;

	{~computer_routine_sub_sample = Synth(\playbuf, [\bufnum, m[\sparse][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_sub_numBox.value]).register}.defer;

	m[\sparse][2].duration.wait;

	~computer_routine_sub_sample.set(\gate, 0);

	(~computer_sub_times_2[1]-m[\sparse][3].duration).wait;

	{~computer_routine_sub_sample = Synth(\playbuf, [\bufnum, m[\sparse][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_sub_numBox.value]).register}.defer;

	m[\sparse][2].duration.wait;

	~computer_routine_sub_sample.set(\gate, 0);

	(~computer_sub_times_2[2]-m[\sparse][3].duration).wait;

	{~computer_routine_sub_sample = Synth(\playbuf, [\bufnum, m[\sparse][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_sub_numBox.value]).register}.defer;

	m[\sparse][2].duration.wait;

	~computer_routine_sub_sample.set(\gate, 0);

	(~computer_sub_times_2[3]-m[\sparse][3].duration).wait;

	{~computer_routine_sub_sample = Synth(\playbuf, [\bufnum, m[\sparse][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_sub_numBox.value]).register}.defer;

	m[\sparse][2].duration.wait;

	~computer_routine_sub_sample.set(\gate, 0);

	(~computer_sub_times_2[4]-m[\sparse][3].duration).wait;

	{~computer_routine_sub_sample = Synth(\playbuf, [\bufnum, m[\sparse][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_sub_numBox.value]).register}.defer;

	m[\sparse][2].duration.wait;

	~computer_routine_sub_sample.set(\gate, 0);

}).play(SystemClock);



~computer_routine_2 = Routine({

	~silence_wait.wait;


	~computer_routine.stop;

	~sax_timer_routine_6_5.play(SystemClock);
	~drum_timer_routine_6_5.play(SystemClock);

	~computer_times_2[0].wait;

	(~computer_times_2[1]/3).wait;

	{~computer_routine_2_sample_3 = Synth(\playbuf, [\bufnum, m[\sparse][3], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_inject_1_numBox.value, \loop, 0]).register}.defer;

	(m[\sparse][2].duration).wait;

	~computer_routine_2_sample_3.set(\gate, 0);

	(~computer_times_2[1]/3-m[\sparse][2].duration).wait;

	{~computer_routine_2_sample_4 = Synth(\playbuf, [\bufnum, m[\sparse][1], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_inject_2_numBox.value, \loop, 0]).register}.defer;

	(m[\sparse][2].duration).wait;

	~computer_routine_2_sample_4.set(\gate, 0);


	"routine 3".postln;

}).play(SystemClock);


