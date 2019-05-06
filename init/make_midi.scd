//Connect MIDI controllers

MIDIClient.init(8, 8, verbose: true);

MIDIIn.connectAll;

//MIDI functions for real-time control during the performance.

MIDIdef.cc(\button_43, {
	arg val;
	if(val==127, {e[\12].value}, {nil});
}, 43);

MIDIdef.cc(\button_44, {
	arg val;

	if(val==127, {e[\19].value}, {nil});
}, 44);


MIDIdef.noteOn(\bass_solo, {
	arg args;
	e[\11].value;
},
22);


MIDIdef.noteOn(\bass_repeat, {
	arg args;
	e[\19].value;
},
23);
