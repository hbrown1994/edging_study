//GUI for real-time control over the SuperCollider code.

//Makes Window to house GUI objects
Window.closeAll;
w = Window("Heretic | Hunter Brown", Rect(750,50,1200,800))
.front
.alwaysOnTop_(true);

/*______________________________________________ 1. Static Text Labels for all 8 Composite Views  ______________________________________________*/


// Composite View 0 ------------------------------------------
StaticText(w, Rect(0,0,580,40))
.string_("Edging Study | Hunter Brown")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 30));

// Composite View 1 ------------------------------------------
StaticText(w, Rect(602,0,580,30))
.string_("Preset Managment")
.align_(\center)
.front
.font_(Font(size: 20));

// Composite View 2 ------------------------------------------
StaticText(w, Rect(490,270,90,100))
.string_("Sax")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 30));

StaticText(w, Rect(3,200,60,30))
.string_("Dry")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(55,200,80,30))
.string_("Glitch")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(114,200,80,30))
.string_("Diode")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(175,200,80,30))
.string_("Delay")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(233,200,80,30))
.string_("Shift")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(295,200,80,30))
.string_("END")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(355,200,80,30))
.string_("Spora")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(415,200,80,30))
.string_("Tran")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));



// Composite View 3 ------------------------------------------
StaticText(w, Rect(1000,270,200,100))
.string_("Playback 1")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 30));

StaticText(w, Rect(604,200,60,30))
.string_("Bomb")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(654,200,80,30))
.string_("Spor")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(714,200,80,30))
.string_("Poly")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(773,200,80,30))
.string_("Gran")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(832,200,80,30))
.string_("Pulse")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(893,200,80,30))
.string_("Trans")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(950,200,80,30))
.string_("Sparse")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));


// Composite View 4 ------------------------------------------
StaticText(w, Rect(490,470,90,100))
.string_("Dry Drums")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 30));

StaticText(w, Rect(3,400,60,30))
.string_("OH L")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(55,400,80,30))
.string_("OH R")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(114,400,80,30))
.string_("Hat")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(175,400,80,30))
.string_("Snare")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(233,400,80,30))
.string_("Kick")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(295,400,80,30))
.string_("Rack")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(355,400,80,30))
.string_("Floor")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(415,400,80,30))
.string_("Master")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

// Composite View 5 ------------------------------------------
StaticText(w, Rect(890,470,200,100))
.string_("Playback 2")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 30));

StaticText(w, Rect(604,400,60,30))
.string_("Room")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(654,400,80,30))
.string_("Loop")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(714,400,80,30))
.string_("Sub")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(775,400,80,30))
.string_("Inject_1")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(840,400,80,30))
.string_("Inject_2")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

// Composite View 6 ------------------------------------------

StaticText(w, Rect(495,690,90,100))
.string_("Drum FX")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 30));

StaticText(w, Rect(3,600,60,30))
.string_("Glitch")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(55,600,80,30))
.string_("Diode")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(114,600,80,30))
.string_("Delay")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(175,600,80,30))
.string_("Concat")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(233,600,80,30))
.string_("Pulse")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(295,600,80,30))
.string_("Sparse")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(355,600,80,30))
.string_("Spora")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

StaticText(w, Rect(415,600,80,30))
.string_("Tran")
.align_(\center)
.front
.stringColor_(Color(0, 0, 0))
.font_(Font(size: 15));

// Composite View 7 ------------------------------------------
StaticText(w, Rect(840,680,120,100))
.string_("Playback 3")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 30));

StaticText(w, Rect(1080,680,120,100))
.string_("Onset Thresh")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 30));

StaticText(w, Rect(604,600,60,30))
.string_("High")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(654,600,80,30))
.string_("Melody")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(714,600,80,30))
.string_("Concat")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

StaticText(w, Rect(775,600,80,30))
.string_("Bass")
.align_(\center)
.front
.stringColor_(Color(1, 1, 1))
.font_(Font(size: 15));

/*______________________________________________ 2. Assign GUI objects to composite views  ______________________________________________*/


// Create Composite Views ------------------------------------------
w.view.decorator_(FlowLayout(w.bounds, 0@0, 0@0));

c = Array.fill( 8, {
	arg view;
	view = CompositeView(w, 600@200)
	.background_();

	view.decorator_(FlowLayout(view.bounds, 10@25, 70@0));
});

// Composite View 0: Init & Stop Reset ------------------------------------------
c[0].background_(Color(0, 0, 0));
c[0].decorator_(FlowLayout(c[0].bounds, 5@20, 15@15)); // Array 0
c[0].decorator.nextLine;
c[0].decorator.nextLine;
c[0].decorator.nextLine;
Array.fill(1, {Button(c[0], 200@50).font_(Font(size: 30)).states_([["Initialization", Color.black, Color.gray(0.8)],["Initialized", Color.white, Color(0,0,0)]])});
Array.fill(1, {Button(c[0], 200@50).font_(Font(size: 30)).states_([["Stop & Reset", Color.black, Color.gray(0.8)]])});
c[0].decorator.nextLine;
Array.fill(1, {Button(c[0], 200@50).font_(Font(size: 30)).states_([["Rehearsal", Color.black, Color.gray(0.8)]])});
Array.fill(1,
	~timing_menu = PopUpMenu(c[0],Rect(0,0,200,50))
	.items_(["Section 1", "Section 2" , "Section 3"])
	.background_(Color.white);
);

c[0].decorator_(FlowLayout(c[0].bounds, 450@45, 15@15)); // Array 0
Array.fill(1, {Button(c[0], 120@120).font_(Font(size: 30)).states_([["START", Color.black, Color.gray(0.8)],["ACTIVE", Color.black, Color(1,0,0)]])});

// Composite View 1: Presets ------------------------------------------
c[1].background_(Color(1, 1, 1));


// Composite View 2: Computer Output Mixing  ------------------------------------------
c[2].decorator_(FlowLayout(c[2].bounds, 9@30, 10@0)); // Array 0
c[2].background_(Color(1, 1, 1));

Array.fill(8, {Slider(c[2], 50@150)});
c[2].decorator.nextLine;
Array.fill(8, {NumberBox(c[2], 50@20)});

c[2].decorator_(FlowLayout(c[2].bounds, 511@45, 4@0)); // A
Array.fill(1, {Button(c[2], 50@50).font_(Font(size: 15)).states_([["Test", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});


c[2].decorator_(FlowLayout(c[2].bounds, 511@15, 35@0)); // Array 0
Array.fill(1,
	{PopUpMenu(c[2],Rect(0,0,60,20))
		.items_(["Glitch", "Diode", "Delay", "Shift", "END"])
		.background_(Color.white)
		.font_(Font(size: 15));
});



// Composite View 3: Computer Output Mixing  ------------------------------------------

c[3].decorator_(FlowLayout(c[3].bounds, 9@30, 10@0)); // Array 0
c[3].background_(Color(0, 0, 0));

Array.fill(7, {Slider(c[3], 50@150)});
c[3].decorator.nextLine;
Array.fill(7, {NumberBox(c[3], 50@20)});

c[3].decorator_(FlowLayout(c[3].bounds, 465@45, 4@0)); // A
Array.fill(1, {Button(c[3], 50@50).font_(Font(size: 15)).states_([["Test", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});


c[3].decorator_(FlowLayout(c[3].bounds, 465@15, 35@0)); // Array 0
Array.fill(1,
	{PopUpMenu(c[3],Rect(0,0,70,20))
		.items_(["Bomb", "Spor", "Poly", "Gran", "Pulse", "Trans", "Sparse"])
		.background_(Color.white)
		.font_(Font(size: 15));
});

// Composite View 4: Dry Drum Mixing  ------------------------------------------

c[4].decorator_(FlowLayout(c[4].bounds, 9@30, 10@0)); // Array 0
c[4].background_(Color(0, 0, 0));

Array.fill(8, {Slider(c[4], 50@150)});
c[4].decorator.nextLine;
Array.fill(8, {NumberBox(c[4], 50@20)});


// Composite View 5: Computer Output Mixing  ------------------------------------------

c[5].decorator_(FlowLayout(c[5].bounds, 9@30, 10@0)); // Array 0
c[5].background_(Color(1, 1, 1));

Array.fill(5, {Slider(c[5], 50@150)});
c[5].decorator.nextLine;
Array.fill(5, {NumberBox(c[5], 50@20)});

c[5].decorator_(FlowLayout(c[5].bounds, 351@45, 4@0)); // A
Array.fill(1, {Button(c[5], 50@50).font_(Font(size: 15)).states_([["Test", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});


c[5].decorator_(FlowLayout(c[5].bounds, 351@15, 35@0)); // Array 0
Array.fill(1,
	{PopUpMenu(c[5],Rect(0,0,70,20))
		.items_(["Room", "Loop", "Sub", "Inject_1", "Inject_2"])
		.background_(Color.white)
		.font_(Font(size: 15));
});

// Composite View 6: Computer Output Mixing  ------------------------------------------

c[6].decorator_(FlowLayout(c[6].bounds, 9@30, 10@0)); // Array 0
c[6].background_(Color(1, 1, 1));

Array.fill(8, {Slider(c[6], 50@150)});
c[6].decorator.nextLine;
Array.fill(8, {NumberBox(c[6], 50@20)});

c[6].decorator_(FlowLayout(c[6].bounds, 511@45, 4@0)); // A
Array.fill(1, {Button(c[6], 50@50).font_(Font(size: 15)).states_([["Test", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});


c[6].decorator_(FlowLayout(c[6].bounds, 511@15, 35@0)); // Array 0
Array.fill(1,
	{PopUpMenu(c[6],Rect(0,0,70,20))
		.items_(["Glitch", "Diode", "Delay", "Concat"])
		.background_(Color.white)
		.font_(Font(size: 15));
});

// Composite View 7: Computer Output Mixing  ------------------------------------------

c[7].decorator_(FlowLayout(c[7].bounds, 9@30, 10@0)); // Array 0
c[7].background_(Color(0, 0, 0));

Array.fill(4, {Slider(c[7], 50@150)});
c[7].decorator.nextLine;
Array.fill(4, {NumberBox(c[7], 50@20)});

c[7].decorator_(FlowLayout(c[7].bounds, 277@45, 4@0)); // A
Array.fill(1, {Button(c[7], 50@50).font_(Font(size: 15)).states_([["Test", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});

c[7].decorator_(FlowLayout(c[7].bounds, 277@15, 35@0)); // Array 0
Array.fill(1,
	{PopUpMenu(c[7],Rect(0,0,60,20))
		.items_(["High", "Melody", "Concat", "Bass"])
		.background_(Color.white)
		.font_(Font(size: 15));
});

// Composite View 7.5: onsets  ------------------------------------------
c[7].decorator_(FlowLayout(c[7].bounds, 365@30, 10@0)); // Array 0

Array.fill(1, {Slider(c[7], 50@150)});
c[7].decorator.nextLine;
Array.fill(1, {NumberBox(c[7], 50@20)});

c[7].decorator_(FlowLayout(c[7].bounds, 435@30, 10@0)); // Array 0


Array.fill(1, {Slider(c[7], 50@150)});
c[7].decorator.nextLine;
Array.fill(1, {NumberBox(c[7], 50@20)});

c[7].decorator_(FlowLayout(c[7].bounds, 365@10, 4@0)); // A
Array.fill(1, {Button(c[7], 50@20).font_(Font(size: 15)).states_([["Sax", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});

c[7].decorator_(FlowLayout(c[7].bounds, 435@10, 4@0)); // A
Array.fill(1, {Button(c[7], 50@20).font_(Font(size: 15)).states_([["Drums", Color.black, Color.gray(0.8)], ["Off",  Color.black, Color(1,0,0)]])});



/*______________________________________________ 3. GUI Object Functionality  ______________________________________________*/

// Composite View 0: Sax Output Mixing  ------------------------------------------

~init_button = c[0].children[0]
.action_({
	arg obj;
	if(obj.value == 1, {~macro_control[\init].value;"init".postln},{nil});
});

~stop_button = c[0].children[1]
.mouseDownAction_({~macro_control[\stop_reset].value})

.mouseUpAction_({~init_button.valueAction = 0});

~rehearsal_button = c[0].children[2]
.mouseDownAction_({~macro_control[\rehearsal_mode].value});

~rehearsal_menu = c[0].children[3];

~start_button= c[0].children[4]
.mouseDownAction_({~macro_control[\start].value});



// Composite View 2: Sax Output Mixing  ------------------------------------------

~sax_slider = c[2].children[0].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~sax_mic.isPlaying,
		{~sax_mic.set(\amp, amp)}
	);
	~sax_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~sax_numBox = c[2].children[8]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~sax_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~sax_fx_1_slider = c[2].children[1].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~sax_fx_1.isPlaying,
		{~sax_fx_1.set(\amp, amp)}
	);
	~sax_fx_1_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~sax_fx_1_numBox = c[2].children[9]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~sax_fx_1_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~sax_fx_2_slider = c[2].children[2].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~sax_fx_2.isPlaying,
		{~sax_fx_2.set(\amp, amp)}
	);
	~sax_fx_2_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~sax_fx_2_numBox = c[2].children[10]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~sax_fx_2_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~sax_fx_3_slider = c[2].children[3].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~sax_fx_3.isPlaying,
		{~sax_fx_3.set(\amp, amp)}
	);
	~sax_fx_3_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~sax_fx_3_numBox = c[2].children[11]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~sax_fx_3_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~sax_fx_4_slider = c[2].children[4].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~sax_fx_4.isPlaying,
		{~sax_fx_4.set(\amp, amp)}
	);
	~sax_fx_4_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~sax_fx_4_numBox = c[2].children[12]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~sax_fx_4_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~sax_fx_5_slider = c[2].children[5].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~sax_fx_5.isPlaying,
		{~sax_fx_5.set(\amp, amp)}
	);
	~sax_fx_5_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~sax_fx_5_numBox = c[2].children[13]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~sax_fx_5_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});



~sax_fx_test_select_button = c[2].children[17];

~sax_fx_audio_test_trig = c[2].children[16]
.action_({
	arg obj;
	if(obj.value == 1, {~sax_state[\fx_test].value},{~sax_state[\fx_test_off].value});
});



~sax_numBox.valueAction_(-60);
~sax_fx_1_numBox.valueAction_(-60);
~sax_fx_2_numBox.valueAction_(-60);
~sax_fx_3_numBox.valueAction_(-60);
~sax_fx_4_numBox.valueAction_(-60);
~sax_fx_5_numBox.valueAction_(-60);


// Composite View 3: PlayBack  Output Mixing  ------------------------------------------


~playback_1_bomb_slider = c[3].children[0].action_({
	arg obj;
	var amp=(-60);
	~computer_bomb_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_bomb_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_bomb_numBox = c[3].children[7]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_bomb_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~playback_1_sporadic_slider = c[3].children[1].action_({
	arg obj;
	var amp=(-60);
	~computer_sporadic_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_sporadic_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_sporadic_numBox = c[3].children[8]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_sporadic_slider.valueAction_(obj.value.linlin(-60.0,0.0,0.0,1.0))
});

~playback_1_poly_slider = c[3].children[2].action_({
	arg obj;
	var amp=(-60);
	~computer_poly_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_poly_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_poly_numBox = c[3].children[9]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_poly_slider.valueAction_(obj.value.linlin(-60.0,0.0,0.0,1.0))
});


~playback_1_gran_slider = c[3].children[3].action_({
	arg obj;
	var amp=(-60);
	~computer_gran_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_gran_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_gran_numBox = c[3].children[10]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_gran_slider.valueAction_(obj.value.linlin(-60.0,0.0,0.0,1.0))
});


~playback_1_pulse_slider = c[3].children[4].action_({
	arg obj;
	var amp=(-60);
	~computer_pulse_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_pulse_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_pulse_numBox = c[3].children[11]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_pulse_slider.valueAction_(obj.value.linlin(-60.0,0.0,0.0,1.0))
});

~playback_1_trans_slider = c[3].children[5].action_({
	arg obj;
	var amp=(-60);
	~computer_trans_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_trans_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_trans_numBox = c[3].children[12]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_trans_slider.valueAction_(obj.value.linlin(-60.0,0.0,0.0,1.0))
});


~playback_1_sparse_slider = c[3].children[6].action_({
	arg obj;
	var amp=(-60);
	~computer_sparse_amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	~playback_1_sparse_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_1_sparse_numBox = c[3].children[13]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_1_sparse_slider.valueAction_(obj.value.linlin(-60.0,0.0,0.0,1.0))
});





~playback_1_audio_test_trig = c[3].children[14]
.action_({
	arg obj;
	if(obj.value == 1, {~computer_state[\playback_test_1].value},{~computer_state[\playback_test_1_off].value});
});


~playback_1_audio_test = c[3].children[15];


~playback_1_bomb_numBox.valueAction_(-60);
~playback_1_sporadic_numBox.valueAction_(-60);
~playback_1_poly_numBox.valueAction_(-60);
~playback_1_gran_numBox.valueAction_(-60);
~playback_1_pulse_numBox.valueAction_(-60);
~playback_1_trans_numBox.valueAction_(-60);
~playback_1_sparse_numBox.valueAction_(-60);

// Composite View 4: Computer Output Mixing  ------------------------------------------
~oh_l_slider = c[4].children[0].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\oh_left_amp, amp)}
	);
	~oh_l_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~oh_l_numBox = c[4].children[8]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~oh_l_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~oh_r_slider = c[4].children[1].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\oh_right_amp, amp)}
	);
	~oh_r_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~oh_r_numBox = c[4].children[9]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~oh_r_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~hat_slider = c[4].children[2].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\hat_amp, amp)}
	);
	~hat_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~hat_numBox = c[4].children[10]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~hat_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~snare_slider = c[4].children[3].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\snare_amp, amp)}
	);
	~snare_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~snare_numBox = c[4].children[11]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~snare_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~kick_slider = c[4].children[4].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\kick_amp, amp)}
	);
	~kick_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~kick_numBox = c[4].children[12]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~kick_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~rack_slider = c[4].children[5].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\rack_amp, amp)}
	);
	~rack_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~rack_numBox = c[4].children[13]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~rack_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~floor_slider = c[4].children[6].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\floor_amp, amp)}
	);
	~floor_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~floor_numBox = c[4].children[14]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~floor_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~master_slider = c[4].children[7].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\master_amp, amp)}
	);
	~master_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~master_numBox = c[4].children[15]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~master_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~rack_numBox.valueAction_(-60);
~floor_numBox.valueAction_(-60);
~master_numBox.valueAction_(-60);
~oh_l_numBox.valueAction_(-60);
~oh_r_numBox.valueAction_(-60);
~hat_numBox.valueAction_(-60);
~snare_numBox.valueAction_(-60);
~kick_numBox.valueAction_(-60);



// Composite View 5: Computer Output Mixing  ------------------------------------------
~playback_2_room_slider = c[5].children[0].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_2_sample_1.isPlaying,
		{~computer_routine_2_sample_1.set(\amp, amp)}
	);
	~playback_2_room_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0))
});

~playback_2_room_numBox = c[5].children[5]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_2_room_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~playback_2_loop_slider = c[5].children[1].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_2_sample_2.isPlaying,
		{~computer_routine_2_sample_2.set(\amp, amp)}
	);
	~playback_2_loop_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0))
});

~playback_2_loop_numBox = c[5].children[6]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_2_loop_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~playback_2_sub_slider = c[5].children[2].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_sub_sample.isPlaying,
		{~computer_routine_sub_sample.set(\amp, amp)}
	);
	~playback_2_sub_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0))
});

~playback_2_sub_numBox = c[5].children[7]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_2_sub_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~playback_2_inject_1_slider = c[5].children[3].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_2_sample_3.isPlaying,
		{~computer_routine_2_sample_3.set(\amp, amp)}
	);
	~playback_2_inject_1_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0))
});

~playback_2_inject_1_numBox = c[5].children[8]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_2_inject_1_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~playback_2_inject_2_slider = c[5].children[4].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_2_sample_4.isPlaying,
		{~computer_routine_2_sample_4.set(\amp, amp)}
	);
	~playback_2_inject_2_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0))
});

~playback_2_inject_2_numBox = c[5].children[9]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_2_inject_2_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~playback_2_audio_test_trig = c[5].children[10]
.action_({
	arg obj;
	if(obj.value == 1, {~computer_state[\playback_test_2].value},{~computer_state[\playback_test_2_off].value});
});


~playback_2_audio_test = c[5].children[11];


~playback_2_room_numBox.valueAction_(-60);
~playback_2_loop_numBox.valueAction_(-60);
~playback_2_sub_numBox.valueAction_(-60);
~playback_2_inject_1_numBox.valueAction_(-60);
~playback_2_inject_2_numBox.valueAction_(-60);



// Composite View 6: drum fx  ------------------------------------------
~drum_fx_1_slider = c[6].children[0].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~drum_fx_1.isPlaying,
		{~drum_fx_1.set(\amp, amp)}
	);
	~drum_fx_1_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~drum_fx_1_numBox = c[6].children[8]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~drum_fx_1_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~drum_fx_2_slider = c[6].children[1].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~drum_fx_2.isPlaying,
		{~drum_fx_2.set(\amp, amp)}
	);
	~drum_fx_2_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~drum_fx_2_numBox = c[6].children[9]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~drum_fx_2_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~drum_fx_3_slider = c[6].children[2].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~drum_fx_3.isPlaying,
		{~drum_fx_3.set(\amp, amp)}
	);
	~drum_fx_3_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~drum_fx_3_numBox = c[6].children[10]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~drum_fx_3_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~drum_fx_test_select_button = c[6].children[17];

~drum_fx_audio_test_trig = c[6].children[16]
.action_({
	arg obj;
	if(obj.value == 1, {~drum_state[\fx_test].value},{~drum_state[\fx_test_off].value});
});

~drum_fx_1_numBox.valueAction_(-60);
~drum_fx_2_numBox.valueAction_(-60);
~drum_fx_3_numBox.valueAction_(-60);


// Composite View 7: Computer Output Mixing  ------------------------------------------

~playback_3_high_slider = c[7].children[0].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_3_1.isPlaying,
		{~computer_routine_3_1.set(\amp, amp)}
	);
	~playback_3_high_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_3_high_numBox = c[7].children[4]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_3_high_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~playback_3_melody_slider= c[7].children[1].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_3_2.isPlaying,
		{~computer_routine_3_2.set(\amp, amp)}
	);
	~playback_3_melody_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_3_melody_numBox = c[7].children[5]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_3_melody_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~playback_3_concat_slider= c[7].children[2].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~drum_fx_5.isPlaying,
		{~drum_fx_5.set(\amp, amp)}
	);
	~playback_3_concat_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_3_concat_numBox = c[7].children[6]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_3_concat_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});

~playback_3_bass_slider= c[7].children[3].action_({
	arg obj;
	var amp=(-60);
	amp = obj.value.linlin(0.0,1.0, -60.0,-0.0);

	if(~computer_routine_3_4.isPlaying,
		{~computer_routine_3_4.set(\amp, amp)}
	);
	~playback_3_bass_numBox.value_(obj.value.linlin(0.0,1.0,-60.0,0.0));
});

~playback_3_bass_numBox = c[7].children[7]
.decimals_(1)
.clipLo_(-60.0)
.clipHi_(0.0)
.action_({
	arg obj;
	~playback_3_bass_slider.valueAction_(obj.value.linlin(-60.0,0.0, 0.0,1.0))
});


~playback_3_audio_test_trig = c[7].children[8]
.action_({
	arg obj;
	if(obj.value == 1, {~computer_state[\playback_test_3].value},{~computer_state[\playback_test_3_off].value});
});


~playback_3_audio_test = c[7].children[9];


~playback_3_high_numBox.valueAction_(-60);
~playback_3_melody_numBox.valueAction_(-60);
~playback_3_concat_numBox.valueAction_(-60);
~playback_3_bass_numBox.valueAction_(-60);

// Composite View 7.5: onsets  ------------------------------------------

~sax_onset_slider= c[7].children[10].action_({
	arg obj;
	var thresh=0.0;
	thresh = obj.value;

	if(~sax_mic.isPlaying,
		{~sax_mic.set(\thresh, thresh)}
	);
	~sax_onset_numBox.value_(obj.value);
});

~sax_onset_numBox = c[7].children[11]
.decimals_(3)
.action_({
	arg obj;
	~sax_onset_slider.valueAction_(obj.value)
});

~percussion_onset_slider= c[7].children[12].action_({
	arg obj;
	var thresh=0.0;
	thresh = obj.value;

	if(~percussion_mics.isPlaying,
		{~percussion_mics.set(\thresh, thresh)}
	);
	~percussion_onset_numBox.value_(obj.value);
});

~percussion_onset_numBox = c[7].children[13]
.decimals_(3)
.action_({
	arg obj;
	~percussion_onset_slider.valueAction_(obj.value)
});


~sax_onset_test_trig = c[7].children[14]
.action_({
	arg obj;
	if(obj.value == 1, {~sax_state[\sax_onset_test].value},{~sax_state[\sax_onset_test_off].value});
});

~percussion_onset_test_trig = c[7].children[15]
.action_({
	arg obj;
	if(obj.value == 1, {~drum_state[\drum_onset_test].value},{~drum_state[\drum_onset_test_off].value});
});





/*______________________________________________ 5. Build Preset Directory GUI ______________________________________________*/


Array.fill(1, {

	~preset = ViewPreset( c[1], ~presetFile ); // Works too

	c[1].layout_( HLayout(
		~preset.build.background_(Color(1, 1, 1));

	));

	~preset.start(
		[~sax_fx_1_numBox, ~sax_fx_2_numBox, ~sax_fx_3_numBox, ~sax_fx_4_numBox, ~sax_fx_5_numBox, ~drum_fx_1_numBox, ~drum_fx_2_numBox, ~drum_fx_3_numBox, ~playback_3_high_numBox, ~playback_3_melody_numBox, ~playback_3_concat_numBox, ~playback_3_bass_numBox, ~playback_1_bomb_numBox, ~playback_1_sporadic_numBox, ~playback_1_poly_numBox, ~playback_1_gran_numBox, ~playback_1_pulse_numBox, ~playback_1_trans_numBox, ~playback_1_sparse_numBox, ~playback_2_room_numBox, ~playback_2_loop_numBox, ~playback_2_sub_numBox, ~playback_2_inject_1_numBox, ~playback_2_inject_2_numBox, ~sax_numBox,~oh_l_numBox,~oh_r_numBox,~hat_numBox, ~snare_numBox,~kick_numBox,~rack_numBox,~floor_numBox, ~master_numBox], //interpolation objects
		[] //launching objects
	);

});



