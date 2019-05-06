
~sax_routine_1 = Routine({
	var state_1, state_2, state_3, trans_1, trans_2, trans_3;


	//sax State #1
	"sax State #1".postln;

	~sax_timer_routine_0.play;

	~sax_cue=0;

	state_1 = \sporadic;

	s.sync;

	~sax_state[\sporadic].value;

	~sax_times[0].wait;

	//sax Trans #1
	"sax Trans #1".postln;


    state_2 = [\sparse, \pulse].choose;


	s.sync;

	case
    { state_2==\sparse }   { ~sax_state[\sporadic_sparse].value; ~sax_cue=1; }
	{ state_2==\pulse}  { ~sax_state[\sparse_pulse].value; ~sax_cue=2; };

	~sax_times[1].wait;

	//sax State #2
	"sax State #2".postln;

	~sax_state[state_2].value;

	case
    { state_2==\sparse }   {  ~sax_cue=3; }
	{ state_2==\pulse}  { ~sax_cue=4;};

	~sax_times[2].wait;

	//sax Trans #2
	"sax Trans #2".postln;

	//choose state_3
	case
	{ state_2==\sparse }  { state_3 = [\gran, \tran].wchoose(~trans_2_choose_weight[0])}
	{ state_2==\pulse }  { state_3 = [\sparse, \silence].wchoose(~trans_2_choose_weight[0])};

	s.sync;

	//choose trans_2
	case
    { state_3==\gran }   { ~sax_state[\sporadic_gran].value; ~sax_cue=5; }
	{ state_3==\tran}   { ~sax_state[\sporadic_poly].value; ~sax_cue=6;}
	{ state_3==\sparse}   { ~sax_state[\sporadic_poly].value; ~sax_cue=7;}
	{ state_3==\silence }   { ~sax_state[\sporadic_poly].value; ~sax_cue=8;};

	~sax_times[3].wait;

	//sax State #3
	"sax State #3".postln;

	case
	{ state_3==\gran }   { ~sax_state[\gran_sparse].value; ~sax_cue=9;}
	{ state_3==\tran }   { ~sax_state[\tran_sparse].value; ~sax_cue=10;}
	{ state_3==\sparse }  { ~sax_state[\sparse_sparse].value; ~sax_cue=11;};
	{ state_3==\silence }  { ~sax_state[\silence_sparse].value; ~sax_cue=12;}

	~sax_state[state_3].value;

	~sax_times[4].wait;

	//sax Trans #3
	"sax Trans #3".postln;

	case
	{ state_3==\gran }   { ~sax_state[\gran_sparse].value; ~sax_cue=13;}
	{ state_3==\tran }   { ~sax_state[\tran_sparse].value; ~sax_cue=14;}
	{ state_3==\sparse }  { ~sax_state[\sparse_sparse].value; ~sax_cue=15;};
	{ state_3==\silence }  { ~sax_state[\silence_sparse].value; ~sax_cue=16;}


	~sax_times[5].wait;

	case
	{ state_3==\gran }   { ~sax_state[\gran_sparse].value; ~sax_cue=17;}
	{ state_3==\tran }   { ~sax_state[\tran_sparse].value; ~sax_cue=17;}
	{ state_3==\sparse }  { ~sax_state[\sparse_sparse].value; ~sax_cue=18;};
	{ state_3==\silence }  { ~sax_state[\silence_sparse].value; ~sax_cue=18;}

	~sax_routine_1_done=1;

	loop{

		if(~drum_routine_1_done==1 && ~computer_routine_1_done==1, {"done -> trig macro routine 2".postln; ~sax_routine_1.stop;}, {nil});

		0.1.wait;

	};

}).play(SystemClock);