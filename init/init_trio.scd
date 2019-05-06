~rehearsal_mode = 0;

~index=0;

Routine({

	//MICS

	~sax_mic = Synth(\sax, [\gate, 1, \amp, ~sax_numBox.value, \out, ~sax_out_dry], target: ~input).register;


	~percussion_mics = Synth(\percussion, [\gate, 1, \oh_left_amp, ~oh_l_numBox.value, \oh_right_amp, ~oh_r_numBox.value , \hat_amp,~hat_numBox.value , \snare_amp, ~snare_numBox.value, \kick_amp, ~kick_numBox.value, \rack_amp, ~rack_numBox.value, \floor_amp, ~floor_numBox.value, \master_amp, ~master_numBox.value, \thresh, ~percussion_onset_numBox.value, \out, ~percussion_out_dry], target: ~input).register;



	~clock = Synth(\clock, [\reset, 1, \min, 36, \max, 37]);

	// PROCESSING
	Ndef(\oscValues_processing_sax, {
		var data= In.kr(~osc_bus, 1);
		var trig= Changed.kr(data);
		SendReply.kr(trig, "/innerOscFlow_processing_sax", data);
	});

	Ndef(\oscValues_processing_drums, {
		var data= In.kr(~osc_bus, 1);
		var trig= Changed.kr(data);
		SendReply.kr(trig, "/innerOscFlow_processing_drums", data);
	});


	(
		~to_processing_sax= OSCFunc({ arg msg, time;
			msg = msg ++ ~sax_cue.asArray ++ ~timer_sax;
			~sax_host.sendMsg("/trigger",*msg[3..]);
		}, "/innerOscFlow_processing_sax",s.addr );
	);


	(
		~to_processing_drums= OSCFunc({ arg msg, time;
			msg = msg ++ ~drum_cue.asArray ++ ~timer_drums;
			~drums_host.sendMsg("/trigger",*msg[3..]);
		}, "/innerOscFlow_processing_drums",s.addr );
	);



	// ROUTINE SET-UP

	//Computer Routine 1:

	//is computer done with first macro routine?
	~computer_routine_1_done=0;

	//timing probabilities for each section
	~computer_times=[
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum),
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum),
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum)
	].normalizeSum * (60 * ~macro_section_1_dur*([1, 0.9].choose + 0.3.rand));

	s.sync;

	~computer_times = ~computer_times.round;

	//is drum done with first macro routine?
	~drum_routine_1_done=0;

	//timing probabilities for each section
	~drum_times=[
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum),
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum),
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum)
	].normalizeSum * (60 * ~macro_section_1_dur*([1, 0.9].choose + 0.3.rand));

	s.sync;

	~drum_times = ~drum_times.round;

	//is sax done with first macro routine?
	~sax_routine_1_done=0;

	//timing probabilities for each section
	~sax_times=[
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum),
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum),
		Array.series(5, 1, 1).wchoose([2, 3, 4, 0, 0].normalizeSum),
		Array.series(5, 1, 1).wchoose([0, 0, 1, 4, 5].normalizeSum)
	].normalizeSum * (60 * ~macro_section_1_dur*([1, 0.9].choose + 0.3.rand));

	s.sync;

	~sax_times = ~sax_times.round;

	//Computer Routine 2:

	~computer_times_2=[
		(0.7 + 0.6.rand), //Computer State #1
		[9, 10, 11].choose//Computer Trans #3
	].normalizeSum * (60 * ~macro_section_2_dur);

	~computer_sub_times_2=[
		[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].choose,
		[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].choose,
		[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].choose,
		[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].choose,
		[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].choose
	].normalizeSum * (60 * (~macro_section_2_dur-0.5));

	~computer_times_2 = ~computer_times_2.round;

	s.sync;

	~macro_routines[\drum_timers].value;
	~macro_routines[\sax_timers].value;

	//foot

	Synth(\key);

	Ndef(\oscValues_keys, {
		var data_a= In.kr(~a_key_bus, 1);
		var data_b= In.kr(~b_key_bus, 1);
		var trig_a= Changed.kr(data_a);
		var trig_b= Changed.kr(data_b);
		SendReply.kr(trig_a, "/innerOscFlow_key_a", data_a);
		SendReply.kr(trig_b, "/innerOscFlow_key_b", data_b);
	});

	(
		OSCFunc({ arg msg;
			if(msg[3] > 0.5, {"start".postln; ~macro_control[\start].value}, {nil});
			if(msg[3]  < 0.5, {nil}, {nil});
		}, "/innerOscFlow_key_a");
	);





}).play(AppClock);