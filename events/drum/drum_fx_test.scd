if(~drum_fx_test_select_button.value == 0, {~drum_state[\sparse].value}, {nil});

if(~drum_fx_test_select_button.value == 1,
	{~drum_fx_2 = Synth(\diode, [
	\input, ~percussion_sends, \out, ~percussion_out,
	\amp, ~drum_fx_2_numBox.value,
	\pitch_low, 80, \pitch_high, 200, \mod_speed, 0.1,
	\atk, 0.01, \sus, 1, \rel, 0.01, \gate, 1,
], ~fxs).register}, {nil});

if(~drum_fx_test_select_button.value == 2,
	{~drum_fx_3 = Synth(\long_delay, [\grain_speed, 7, \trig_speed, 20, \hpf_freq, 100, \input, ~percussion_sends, \out, ~percussion_out, \thresh, 0.2, \amp, (-6), \atk, 0.01, \rel, 0.01, \gate, 1], target:~fxs).register;}, {nil});


if(~drum_fx_test_select_button.value == 3,
	{~drum_fx_5 = Synth(\concat,
	[
		\out, ~computer_out,  \bufnum, m[\end][2], \amp, ~playback_3_concat_numBox.value,
		\input_1, ~percussion_sends, \input_2, ~sax_sends,
		\atk, 0.01, \rel, 0.01, \gate, 1,
		\storesize, m[\end][2].duration, \seektime, m[\end][2].duration, \seekdur, m[\end][2].duration, \length, 0.05

], ~fxs).register}, {nil});



