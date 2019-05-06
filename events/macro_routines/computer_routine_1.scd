~computer_routine_1 = Routine({
	var state_1, state_2, state_3, trans_1, trans_2, trans_3;


	//Computer State #1
	"Computer State #1".postln;

	state_1 = \bomb;

	s.sync;

	~computer_state[\bomb].value;

	~computer_times[0].wait;

	//Computer Trans #1
	"Computer Trans #1".postln;

	case
	{ state_1==\bomb }   { state_2 = [\poly, \sporadic].wchoose([1, 0].normalizeSum)};


	s.sync;

	case
    { state_2==\sporadic && state_1==\bomb }   { ~computer_state[\bomb_sporadic].value }
    { state_2==\poly  && state_1==\bomb}  { ~computer_state[\bomb_poly].value };


	~computer_times[1].wait;

	//Computer State #2
	"Computer State #2".postln;

	~computer_state[state_2].value;

	~computer_times[2].wait;

	//Computer Trans #2
	"Computer Trans #2".postln;

	//choose state_3
	case
    { state_2==\sporadic && state_1==\bomb}  { state_3 = [\gran, \poly].wchoose([10, 1].normalizeSum)}
	{ state_2==\poly && state_1==\bomb}  { state_3 = [\pulse, \gran].wchoose([0, 10].normalizeSum)};

	s.sync;

	//choose trans_2
	case
    { state_2==\sporadic && state_3==\gran }   { ~computer_state[\sporadic_gran].value}
	{ state_2==\sporadic && state_3==\poly }   { ~computer_state[\sporadic_poly].value}

	{ state_2==\poly && state_3==\pulse }   { ~computer_state[\poly_pulse].value}
	{ state_2==\poly && state_3==\gran }   { thisProcess.interpreter.executeFile(~states_path_computer++"computer_trans_poly_gran.scd");};

	~computer_times[3].wait;

	//Computer State #3
	"Computer State #3".postln;

	~computer_state[state_3].value;

	~computer_times[4].wait;

	//Computer Trans #3
	"Computer Trans #3".postln;

	case
	{ state_3==\gran }   { ~computer_state[\gran_sparse].value}
	{ state_3==\pulse }  { ~computer_state[\pulse_sparse].value}
	{ state_3==\tran }   { ~computer_state[\tran_sparse].value}
	{ state_3==\poly}  { ~computer_state[\poly_sparse].value};

	~computer_times[5].wait;

	~computer_state[\sparse].value;

	~computer_routine_1_done=1;

	loop{

		if(~drum_routine_1_done==1 && ~sax_routine_1_done==1, {~macro_routines[\computer_routine_2].value; ~computer_routine_1.stop;}, {nil});

		0.1.wait;

	};

	~section_2_wait.wait;

}).play(SystemClock);


	