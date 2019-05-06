//s.record(numChannels: 6);
/*
~sax_fx_1.free;

s.plotTree;

~drum_fx_sparse.free; ??? why not free



"/Users/hunterbrown/Desktop/Music_Tech_03-10-2018/substates/events/sax/sax_trans_sporadic_silence.scd"
*/


(
/*______________________________________________ DO NOT ALTER ANY CODE BELOW THIS LINE ______________________________________________*/
/*_______________________________________________________________________________________________________________________________________________________________________________*/


/*______________________________________________ 1. Server Configuration ______________________________________________*/
s = Server.local;
s.newBusAllocators;
s.latency = 0.05;
ServerBoot.removeAll;
ServerTree.removeAll;
ServerQuit.removeAll;
Server.local.options.numOutputBusChannels = 6;
Server.local.options.numInputBusChannels = 8;
o=s.options;
o.memSize;
o.memSize = 2.pow(20);

s.plotTree;



/*______________________________________________ 2. Global Variables/Arrays ______________________________________________*/

~sax_host = NetAddr("localhost", 4858);
~drums_host = NetAddr("localhost", 4859);

~path = PathName(thisProcess.nowExecutingPath).parentPath++"buffers/";

~buffers_path = PathName(thisProcess.nowExecutingPath).parentPath++"buffers/";
~synth_def_path = PathName(thisProcess.nowExecutingPath).parentPath++"synth_defs/";
~init_path = PathName(thisProcess.nowExecutingPath).parentPath++"init/";
~presetFile = (PathName(thisProcess.nowExecutingPath).pathOnly++"presets/"++ "asoundPresetExample.sctxar").standardizePath;


~states_path_computer = PathName(thisProcess.nowExecutingPath).parentPath++"events/computer/";
~states_path_drum = PathName(thisProcess.nowExecutingPath).parentPath++"events/drum/";
~states_path_sax = PathName(thisProcess.nowExecutingPath).parentPath++"events/sax/";
~macro_routines_path = PathName(thisProcess.nowExecutingPath).parentPath++"events/macro_routines/";


~macro_section_1_dur=5.0;
~macro_section_2_dur=5.0;
~section_2_wait = Array.series(31, 30, 1).choose;


~oh_left_in = 0;
~oh_right_in = 1;
~hat_in = 2;
~snare_in = 4;
~kick_in = 3;
~rack_in = 5;
~floor_in = 6;
~sax_in = 7;

~sax_out_dry=0;
~percussion_out_dry=1;
~sax_out=2;
~percussion_out=3;
~computer_out = 4;

~sax_cue=0;
~drum_cue=0;

~silence_wait=8;
~noise_section = 67;
~guitar_solo = (7 + 5.rand).round;


//Make Arrays for ntube processing
thisProcess.interpreter.executeFile(~init_path++"make_arrays.scd");

/*______________________________________________ 3. Buffers ______________________________________________*/
~makeBuffers = {
	thisProcess.interpreter.executeFile(~init_path++"make_buffers.scd");
};

/*______________________________________________ 4. Nodes ______________________________________________*/
~makeNodes = {
	thisProcess.interpreter.executeFile(~init_path++"make_nodes.scd");
};

/*______________________________________________ 5. MIDI ______________________________________________*/
~makeMIDI = {
	thisProcess.interpreter.executeFile(~init_path++"make_midi.scd");
};

/*______________________________________________ 6. Events/Arrays ______________________________________________*/
~makeEvents = {

	~macro_control = Dictionary.new;
	~computer_state = Dictionary.new;
	~drum_state = Dictionary.new;
	~sax_state = Dictionary.new;
	~macro_routines = Dictionary.new;

	/*______________________________________________ 6a. Macro Controls ______________________________________________*/

	~macro_control.add(\init -> {
		thisProcess.interpreter.executeFile(~init_path++"init_trio.scd");
	});

	~macro_control.add(\start -> {
		thisProcess.interpreter.executeFile(~init_path++"start_trio.scd");
	});

	~macro_control.add(\stop_reset -> {
		thisProcess.interpreter.executeFile(~init_path++"start_stop_trio.scd");
	});

	~macro_control.add(\rehearsal_mode -> {
		thisProcess.interpreter.executeFile(~init_path++"rehearsal_mode_trio.scd");
	});


	/*______________________________________________ 6b. Computer_States ______________________________________________*/

	thisProcess.interpreter.executeFile(~init_path++"make_comp_events.scd");

	/*______________________________________________ 6c. Drum_States ______________________________________________*/
	thisProcess.interpreter.executeFile(~init_path++"make_drum_events.scd");

	/*______________________________________________ 6d. Sax_States ______________________________________________*/
	thisProcess.interpreter.executeFile(~init_path++"make_sax_events.scd");

	/*______________________________________________ 6e. macro_routines ______________________________________________*/
	~macro_routines.add(\computer_routine_1 -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"computer_routine_1.scd");
	});

	~macro_routines.add(\computer_routine_2 -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"computer_routine_2.scd");
	});

	~macro_routines.add(\computer_routine_3 -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"computer_routine_3.scd");
	});

	~macro_routines.add(\drum_routine_1 -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"drum_routine_1.scd");
	});

	~macro_routines.add(\sax_routine_1 -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"sax_routine_1.scd");
	});

	~macro_routines.add(\drum_timers -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"drum_timers.scd");
	});

	~macro_routines.add(\sax_timers -> {
		thisProcess.interpreter.executeFile(~macro_routines_path++"sax_timers.scd");
	});
};
/*______________________________________________ 7. GUI ______________________________________________*/
~makeGui = {
	thisProcess.interpreter.executeFile(~init_path++"make_gui.scd");
};

/*______________________________________________ 8. Cleanup ______________________________________________*/

~cleanup = {
	s.newBusAllocators;
	ServerBoot.removeAll;
	ServerTree.removeAll;
	ServerQuit.removeAll;
};

ServerBoot.add(~makeGui);
ServerBoot.add(~makeBuffers);
ServerQuit.add(~cleanup);

/*______________________________________________ 9. Busses & SynthDefs ______________________________________________*/

s.waitForBoot({

	thisProcess.interpreter.executeFile(~init_path++"make_busses.scd");

	s.sync;

	PathName(~synth_def_path).entries.size.do{

		arg count=0;

		thisProcess.interpreter.executeFile(~synth_def_path++PathName(~synth_def_path).entries.at(count).fileName.asString);

		count = count + 1;
	};

	s.sync;

	ServerTree.add(~makeNodes);
	ServerTree.add(~makeMIDI);
	ServerTree.add(~makeEvents);
	s.freeAll;
	s.sync;
	s.meter;
	"done".postln;
});
)
