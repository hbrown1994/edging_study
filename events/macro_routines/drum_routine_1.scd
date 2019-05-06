//Test to ensure times equal ~macro_section_1_dur

~drum_routine_1 = Routine({
	var state_1, state_2, state_3, trans_1, trans_2, trans_3;

	"Sparse"

	~drum_timer_routine_0.play;


	~drum_fx_1 = Synth(\loop_glitch,
	[\gate, 1,

		//looping
		\startPos, 0, \startLoop, 0,
		\loopEnd_low, 0.02, \loopEnd_high, 2.0,
		\prelevel, 0.0,

		//rate
		\rate_low_gate, 0, \rate_low_time, 30, \rate_low_1, 1.0 ,\rate_low_2, 0.2,
		\rate_high_gate, 0, \rate_high_time, 30, \rate_high_1, 2.0, \rate_high_2, 0.5,

		//end
		\end_low_gate, 0, \end_low_time, 30, \end_low_1, 0.02 ,\end_low_2, 1.0,
		\end_high_gate, 0, \end_high_time, 30, \end_high_1, 0.5, \end_high_2, 2.0,


		//routing
		\onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out,

		//silence
		\silence_weight_low, 0.0, \silence_weight_high, 1.0,

		//lag
		\lag_env_gate, 0, \lag, 6.0, \lag_weight_low, 3, \lag_weight_high, 7,
		\lag_low, 0.0, \lag_high, 5.0, \lag_env_time, 30,
		//silence
		\silence_wait, 4.0

	],
	~fxs).register;

	~drum_times[0].wait;

	//trans 1

	~drum_trans_1=[\soft, \sproradic].choose;

	if(~drum_trans_1 == \soft,
		{~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5); "sparse->soft".postln;},


		{~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5);  "sparse->sporadic".postln;})

	~drum_times[1].wait;


	//state 2

	if(~drum_trans_1 == \soft, {~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5); "sparse->soft".postln;},


		{~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5);  "sparse->sporadic".postln;})


	~drum_times[2].wait;

	//trans_2

	if(~drum_trans_1==\soft, {~drum_trans_2=[\pulse, \poly].choose}, {~drum_trans_2=[\gran, \silence].choose});


	case
	{ ~drum_trans_2==\pulse  }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\poly }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\gran }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\silence }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)};


	~drum_times[3].wait;

	//trans_3

	case
	{ ~drum_trans_2==\pulse  }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\poly }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\gran }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\silence }   { ~drum_fx_1.set(\gate, 0)};


	~drum_times[4].wait;

	//sparse

	case
	{ ~drum_trans_2==\pulse  }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\poly }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\gran }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)}

	{ ~drum_trans_2==\silence }   { ~drum_fx_1.set(\rate, 1, \gate, 1, \startPos, 0, \startLoop, 0, \loopEnd_low, 0.002, \loopEnd_high, 1.0, \thresh, 0.1, \loopEnd_low, 0.02, \loopEnd_high, 0.5, \lag, 0.0, \rate_low, 0.1, \rate_high, 10.0, \onsets_in, ~percussion_onset_sends, \audio_in, ~percussion_sends, \out, ~percussion_out, \lag_weight_low, 3, \lag_weight_high, 7, \silence_weight_low, 0.5, \silence_weight_high, 0.5)};


	~drum_times[5].wait;

	~drum_routine_1_done = 1;


}).play(SystemClock);



["Sparse->Soft".postln;,"Sparse->Sporadic".postln;].choose;