~drum_timer_routine_0 = Routine({
	var count=~drum_times[0].asInt;

	~drum_cue=0;

	~drum_state_0 = \sparse;


	~drum_state[\sparse].value;

	loop{
		if(count==0, {~drum_timer_routine_1.play(SystemClock); ~drum_timer_routine_0.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;

	};
});

~drum_timer_routine_1 = Routine({
	var count=~drum_times[1].asInt;


	~drum_state_1 = [\poly, \sporadic].wchoose([10,0].normalizeSum);

	s.sync;

	case
    { ~drum_state_1==\sporadic }   { ~drum_state[\sparse_sporadic].value; ~drum_cue=2; }
	{ ~drum_state_1==\poly}  { ~drum_state[\sparse_poly].value; ~drum_cue=1; };

	loop{
		if(count==0, {~drum_timer_routine_2.play(SystemClock); ~drum_timer_routine_1.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~drum_timer_routine_2 = Routine({
	var count=~drum_times[2].asInt;


	~drum_state[~drum_state_1].value;

	case
    { ~drum_state_1==\sporadic }   {  ~drum_cue=4; }
	{ ~drum_state_1==\poly}  { ~drum_cue=3;};

	loop{
		if(count==0, {~drum_timer_routine_3.play(SystemClock); ~drum_timer_routine_2.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~drum_timer_routine_3 = Routine({
	var count=~drum_times[3].asInt;

	case
	{ ~drum_state_1==\sporadic }  { ~drum_state_2 = [\gran, \silence].wchoose([10,0].normalizeSum);}
	{ ~drum_state_1==\poly }  { ~drum_state_2 = [\pulse, \tran].wchoose([10,0].normalizeSum);};

	s.sync;

	//choose trans_2
	case
    { ~drum_state_2==\gran }   { ~drum_state[\sporadic_gran].value; ~drum_cue=7; }
	{ ~drum_state_2==\silence}   { ~drum_state[\sporadic_silence].value; ~drum_cue=8; }
	{ ~drum_state_2==\pulse}   { ~drum_state[\poly_pulse].value;  ~drum_cue=5;}
	{ ~drum_state_2==\tran }   { ~drum_state[\poly_tran].value; ~drum_cue=6; };

	loop{
		if(count==0, {~drum_timer_routine_4.play(SystemClock); ~drum_timer_routine_3.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~drum_timer_routine_4 = Routine({
	var count=~drum_times[4].asInt;

	case
	{ ~drum_state_2==\gran }   { ~drum_cue=11;}
	{ ~drum_state_2==\silence }   { ~drum_cue=12; }
	{ ~drum_state_2==\pulse }  { ~drum_cue=9;  }
	{ ~drum_state_2==\tran }  { ~drum_cue=10;};

	~drum_state[~drum_state_2].value;

	loop{
		if(count==0, {~drum_timer_routine_5.play(SystemClock); ~drum_timer_routine_4.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~drum_timer_routine_5 = Routine({
	var count=~drum_times[5].asInt;

	case
	{ ~drum_state_2==\gran }   { ~drum_state[\gran_silence].value; ~drum_cue=15;}
	{ ~drum_state_2==\silence }   { ~drum_state[\silence].value; ~drum_cue=16;}
	{ ~drum_state_2==\pulse }  { ~drum_state[\pulse_sparse].value; ~drum_cue=13; }
	{ ~drum_state_2==\tran }  { ~drum_state[\tran_sparse].value; ~drum_cue=14;};

	loop{
		if(count==0, {~drum_timer_routine_6.play(SystemClock); ~drum_timer_routine_5.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});





~drum_timer_routine_6 = Routine({

	case
	{ ~drum_state_2==\gran }   {~drum_state[\silence].value; ~drum_cue=18; "silence".postln;}
	{ ~drum_state_2==\silence }   {~drum_state[\silence].value;~drum_cue=18; "silence".postln;}
	{ ~drum_state_2==\pulse }  {  ~drum_cue=17;"sparse".postln;}
	{ ~drum_state_2==\tran }  { ~drum_cue=17;"sparse".postln;};

	~drum_routine_1_done=1;

	~timer_drums=0;

	loop{

		if(~drum_routine_1_done==1 && ~computer_routine_1_done==1, { ~drum_timer_routine_6.stop; ~drum_fx_1.set(\rel, 0.01, \gate, 0)}, {nil});

		0.1.wait;

	};

	~section_2_wait.wait;

});

~drum_timer_routine_6_5 = Routine({
	var count=~silence_wait;

	~drum_cue=19;

	~computer_routine.stop;

	~drum_fx_1.set(\rel, 0.01, \gate, 0);

	loop{
		if(count==0, {~drum_timer_routine_7.play(SystemClock); ~drum_timer_routine_6_5.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~drum_timer_routine_7 = Routine({
	var count=(~computer_times_2[0]).asInt;

	~drum_cue=20;

	{~computer_routine_2_sample_1 = Synth(\sines, [\amp1, 0.8, \amp2, 0.2, \amp3, 0.6, \gate, 1, \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_room_numBox.value]).register}.defer;

	{~drum_fx_2 = Synth(\diode, [
	\input, ~percussion_sends, \out, ~percussion_out,
	\amp, ~drum_fx_2_numBox.value,
	\pitch_low, 80, \pitch_high, 200, \mod_speed, 0.1,
	\atk, 0.01, \sus, 1, \rel, 0.01, \gate, 1,
], ~fxs).register}.defer;

	loop{
		if(count==0, {~drum_timer_routine_8.play(SystemClock); ~drum_timer_routine_7.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~drum_timer_routine_8 = Routine({
	var count=~computer_times_2[1].asInt;

	~drum_cue=21;

	~computer_routine_2_sample_1.set(\gate, 0);
	~drum_fx_2.set(\gate, 0);

	{~drum_fx_3 = Synth(\long_delay, [\grain_speed, 7, \trig_speed, 20, \hpf_freq, 100, \input, ~percussion_sends, \out, ~percussion_out, \thresh, 0.2, \amp, ~drum_fx_3_numBox.value, \atk, 0.01, \rel, 0.01, \gate, 1], target:~fxs).register}.defer;

	{~computer_routine_2_sample_2 = Synth(\playbuf, [\bufnum, m[\sparse][0] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_loop_numBox.value]).register}.defer;

	loop{
		if(count==0, {~drum_timer_routine_9.play(SystemClock); ~drum_timer_routine_8.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~drum_timer_routine_9 = Routine({
	var count= (m[\end][5].duration.round.asInt);


	~computer_routine_2.stop;

	~computer_routine_2_sample_2.set(\gate, 0);

	{~computer_routine_3_1 = Synth(\playbuf, [\bufnum, m[\end][5] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_high_numBox.value, \loop, 0]).register}.defer;




	~drum_fx_3.set(\gate, 0);
	{~drum_fx_4 = 	Synth(\delay_sporadic_1, [
		\gate, 1,
		\audio_in, ~percussion_sends, \out, ~percussion_out,
		\pitchDispersion, 0.3,  \timeDispersion, 0.3, \size, 0.2,
		\pitch_low, 0.5, \pitch_high, 2.0,
		\trig_speed, 4, \trig_dev, 1.0,
		\onset_time, m[\end][5].duration.round/3 , \contin_time,m[\end][5].duration.round/3,
		\term_time, m[\end][5].duration.round/3,

		\pitch_low_gate, 1,
		\pitch_low_low, 1.0, \pitch_low_med, 0.5, \pitch_low_high, 0.1,

		\pitch_high_gate, 1,
		\pitch_high_low, 1.0, \pitch_high_med, 2.5, \pitch_high_high, 5.0,

		\timeDispersion_gate, 1,
		\timeDispersion_low, 0.0, \timeDispersion_med, 0.04, \timeDispersion_high, 0.1,

		\pitchDispersion_gate, 1,
		\pitchDispersion_low, 0.0,  \pitchDispersion_med, 0.01, \pitchDispersion_high, 0.2, \amp, -3,
	    \rel, m[\end][4].duration.round/2,


	], ~fxs).register;}.defer;

	~drum_cue=22;

	loop{
		if(count==0, {~drum_timer_routine_10.play(SystemClock);~drum_timer_routine_9.stop; }, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~drum_timer_routine_10 = Routine({
	var count= (m[\end][4].duration.round.asInt);

	~drum_cue=23;

	~drum_fx_4.set(\gate, 0, \rel, 70);

	~computer_routine_3_1.set(\gate, 0, \rel, 5);

	{~computer_routine_3_2 = Synth(\playbuf, [\bufnum, m[\end][4] ,\out, ~computer_out, \gate, 1, \atk, (m[\end][4].duration.round/4)*3, \rel, 0.005, \amp, ~playback_3_melody_numBox.value, \loop, 0]).register}.defer;


	loop{
		if(count==0, {~drum_timer_routine_11.play(SystemClock); ~drum_timer_routine_10.stop;}, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~drum_timer_routine_11 = Routine({
	var count= ~noise_section;

	~drum_cue=24;

	~computer_routine_3_2.set(\gate, 0);

	{~drum_fx_5 = Synth(\concat,
		[
			\out, ~computer_out,  \bufnum, m[\end][2], \amp, ~playback_3_concat_numBox.value,
			\input_1, ~percussion_sends, \input_2, ~sax_sends,
			\atk, 0.01, \rel, 0.01, \gate, 1,
			\storesize, m[\end][2].duration, \seektime, m[\end][2].duration, \seekdur, m[\end][2].duration, \length, 0.05

	], ~fxs).register}.defer;

	loop{
		if(count==0, {~drum_timer_routine_11_5.play(SystemClock);~drum_timer_routine_11.stop; }, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});


~drum_timer_routine_11_5 = Routine({
	var count= ~guitar_solo.asInt;

	~drum_cue=25;

	~drum_fx_5.set(\gate, 0, \rel, 0.01);

	loop{
		if(count==0, {~drum_timer_routine_12.play(SystemClock);~drum_timer_routine_11_5.stop; }, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});


~drum_timer_routine_12 = Routine({
	var count= (m[\end][3].duration.round.asInt);

	~drum_cue=26;

	{~computer_routine_3_4 = Synth(\playbuf, [\bufnum, m[\end][3], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_bass_numBox.value, \loop, 0]).register}.defer;

	loop{
		if(count==0, {~drum_timer_routine_13.play(SystemClock);~drum_timer_routine_12.stop; }, {nil});
		~timer_drums = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~drum_timer_routine_13 = Routine({
	var count= 0;

	~timer_drums = count;

	~drum_cue=27;

});



