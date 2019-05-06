~sax_timer_routine_0 = Routine({
	var count=~sax_times[0].asInt;
	//state_1
	~sax_cue=0;

	~sax_state[\sporadic].value;
	~sax_state_0 = \sporadic;

	loop{
		if(count==0, {~sax_timer_routine_1.play(SystemClock); ~sax_timer_routine_0.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;

	};
});

~sax_timer_routine_1 = Routine({
	var count=~sax_times[1].asInt;


	~sax_state_1 = [\sparse, \pulse].wchoose([10,0].normalizeSum);

	s.sync;

	case
	{ ~sax_state_1==\sparse }   { ~sax_state[\sporadic_sparse].value; ~sax_cue=1; }
	{ ~sax_state_1==\pulse}  { ~sax_state[\sporadic_pulse].value; ~sax_cue=2; };

	loop{
		if(count==0, {~sax_timer_routine_2.play(SystemClock); ~sax_timer_routine_1.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~sax_timer_routine_2 = Routine({
	var count=~sax_times[2].asInt;
	//state_2

	~sax_state[~sax_state_1].value;

	case
	{ ~sax_state_1==\sparse }   {  ~sax_cue=3; }
	{ ~sax_state_1==\pulse}  { ~sax_cue=4;};

	loop{
		if(count==0, {~sax_timer_routine_3.play(SystemClock); ~sax_timer_routine_2.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~sax_timer_routine_3 = Routine({
	var count=~sax_times[3].asInt;

	case
	{ ~sax_state_1==\sparse }  { ~sax_state_2 = [\gran, \tran].wchoose([0,10].normalizeSum);}
	{ ~sax_state_1==\pulse }  { ~sax_state_2 = [\sparse, \silence].wchoose([10,0].normalizeSum);};

	s.sync;

	//choose trans_2
	case
	{ ~sax_state_2==\gran }   { ~sax_state[\sparse_gran].value; ~sax_cue=5; }
	{ ~sax_state_2==\tran}   { ~sax_state[\sparse_tran].value; ~sax_cue=6;}
	{ ~sax_state_2==\sparse}   { ~sax_state[\pulse_sparse].value; ~sax_cue=7;}
	{ ~sax_state_2==\silence }   { ~sax_state[\pulse_silence].value; ~sax_cue=8;};

	loop{
		if(count==0, {~sax_timer_routine_4.play(SystemClock); ~sax_timer_routine_3.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~sax_timer_routine_4 = Routine({
	var count=~sax_times[4].asInt;
	//state_3
	case
	{ ~sax_state_2==\gran }   { ~sax_cue=9;}
	{ ~sax_state_2==\tran }   {  ~sax_cue=10;}
	{ ~sax_state_2==\sparse }  {  ~sax_cue=11;}
	{ ~sax_state_2==\silence }  { ~sax_cue=12;};

	~sax_state[~sax_state_2].value;

	loop{
		if(count==0, {~sax_timer_routine_5.play(SystemClock); ~sax_timer_routine_4.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});

~sax_timer_routine_5 = Routine({
	var count=~sax_times[5].asInt;

	case
	{ ~sax_state_2==\gran }   { ~sax_state[\gran_sparse].value; ~sax_cue=13;}
	{ ~sax_state_2==\tran }   { ~sax_state[\tran_sparse].value; ~sax_cue=14;}
	{ ~sax_state_2==\sparse }  { ~sax_state[\sparse_silence].value;~sax_cue=15;}
	{ ~sax_state_2==\silence }  {  ~sax_cue=16;};

	loop{
		if(count==0, {~sax_timer_routine_6.play(SystemClock); ~sax_timer_routine_5.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};
});



~sax_timer_routine_6 = Routine({
	//state_4
	case
	{ ~sax_state_2==\gran }   {~sax_cue=17;}
	{ ~sax_state_2==\tran }   {~sax_cue=17;}
	{ ~sax_state_2==\sparse }  {  ~sax_state[\silence].value; ~sax_cue=18;}
	{ ~sax_state_2==\silence }  { ~sax_cue=18;};

	~sax_routine_1_done=1;

	~timer_sax =0;

	loop{

		if(~sax_routine_1_done==1 && ~computer_routine_1_done==1, { ~sax_timer_routine_6.stop; if(~sax_fx_1.isPlaying, {~sax_fx_1.set(\rel, 0.01, \gate, 0)}, {nil});}, {nil});

		0.1.wait;

	};

	~section_2_wait.wait;

});


~sax_timer_routine_6_5 = Routine({
	var count=~silence_wait;

	~sax_state[\silence].value;

	~sax_cue=19;

	loop{
		if(count==0, {~sax_timer_routine_7.play(SystemClock); ~sax_timer_routine_6_5.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_7 = Routine({
	var count=(~computer_times_2[0]).asInt;

	~sax_cue=20;


	{~sax_fx_2 = Synth(\diode, [
		\input, ~sax_sends, \out, ~sax_out,
		\amp, ~sax_fx_2_numBox.value,
		\pitch_low, 80, \pitch_high, 200, \mod_speed, 0.1,
		\atk, 0.01, \sus, 1, \rel, 0.01, \gate, 1,
	], ~fxs).register}.defer;


	loop{
		if(count==0, {~sax_timer_routine_8.play(SystemClock); ~sax_timer_routine_7.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_8 = Routine({
	var count=~computer_times_2[1].asInt;

	~sax_cue=21;

	~sax_fx_2.set(\gate, 0);

	{~sax_fx_3 = Synth(\long_delay_1, [\silence_wait_thresh, 0.2, \silence_wait_time, 1, \grain_speed, 7, \trig_speed, 20, \hpf_freq, 100, \input, ~sax_sends, \out, ~sax_out, \thresh, 0.2, \amp, ~sax_fx_3_numBox.value, \atk, 0.01, \rel, 0.01, \gate, 1], target:~fxs).register}.defer;

	loop{
		if(count==0, {~sax_timer_routine_9.play(SystemClock); ~sax_timer_routine_8.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_9 = Routine({
	var count= m[\end][5].duration.round.asInt;

	~sax_cue=22;

	~sax_fx_3.set(\gate, 0);

	loop{
		if(count==0, {~sax_timer_routine_10.play(SystemClock);~sax_timer_routine_9.stop;}, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_10 = Routine({
	var count= m[\end][4].duration.round.asInt;

	~sax_cue=23;


	loop{
		if(count==0, {~sax_timer_routine_11.play(SystemClock); ~sax_timer_routine_10.stop; }, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_11 = Routine({
	var count= ~noise_section;

	~sax_cue=24;

	{~sax_fx_5 = Synth(\loop_glitch_stereo,
		[\gate, 1,


			\ring_mod_low, -1.0, \ring_mod_high, 1.0, \ring_mod_gate, 0,
			\amp, ~sax_fx_5_numBox.value,

			//looping
			\startPos, 0, \startLoop, 0,

			//rate
			\rate_loaw_gate, 0, \rate_low_time, 30, \rate_low_1, 0.1 ,\rate_low_2, 0.2,
			\rate_high_gate, 0, \rate_high_time, 30, \rate_high_1, 2.0, \rate_high_2, 0.5,

			//end
			\end_low_gate, 0, \end_low_time, 30, \end_low_1, 0.002 ,\end_low_2, 1.0,
			\end_high_gate, 0, \end_high_time, 30, \end_high_1, 0.6, \end_high_2, 2.0,

			\speed_high_1, 5.0, \speed_high_2, 1, \speed_time, 1, \speed_time_gate, 0,
			\speed_low_1, 2.0, \speed_low_2, 1,

			\audio_in_1, ~percussion_sends,  \audio_in_2,~sax_sends,

			\thresh, ~percussion_onset_numBox.value,

			\pan_speed, 10,


			\dust_low, 10, \dust_high, 20, \dust_gate, 0, \glitch_low, -1.0, \glitch_high, 1.0, \glitch_gate, 0,

			//silence
			\silence_high_1, 1.0, \silence_high_2, 1.0,
			\silence_low_1, 0.0, \silence_low_2, 0.0, \silence_time, 1, \silence_time_gate, 0,

			\delay_low, -1.0, \delay_high, -1.0, \delay_gate, 0,

			//lag
			\lag_env_gate, 0,  \lag_weight_low, 3, \lag_weight_high, 7,
			\lag_low, 0.01, \lag_high, 0.01, \lag_env_time, 1, \rel,0.01, \out, ~sax_out,
			//silence
			\silence_wait, 1.0, \curve, 'sin'

		],
		~fxs).register}.defer;

	loop{
		if(count==0, {~sax_timer_routine_11_5.play(SystemClock);~sax_timer_routine_11.stop; }, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});




~sax_timer_routine_11_5 = Routine({
	var count= ~guitar_solo.asInt;

	~sax_cue=25;

	~sax_fx_5.set(\gate, 0, \rel, 0.01);

	loop{
		if(count==0, {~sax_timer_routine_12.play(SystemClock);~sax_timer_routine_11_5.stop; }, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_12 = Routine({
	var count= m[\end][3].duration.round.asInt;

	~sax_cue=26;

	loop{
		if(count==0, {~sax_timer_routine_13.play(SystemClock);~sax_timer_routine_12.stop; }, {nil});
		~timer_sax = count;
		s.sync;

		s.sync;
		count = count + (-1);
		1.wait;
	};

});

~sax_timer_routine_13 = Routine({
	var count= 0;

	~timer_sax = count;

	~sax_cue=27;

});

