if(~playback_3_audio_test.value == 0, {~computer_routine_3_1 = Synth(\playbuf, [\bufnum, m[\end][5] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_high_numBox.value, \loop, 0]).register}, {nil});
if(~playback_3_audio_test.value == 1, {~computer_routine_3_2 = Synth(\playbuf, [\bufnum, m[\end][4] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_melody_numBox.value, \loop, 0]).register}, {nil});
if(~playback_3_audio_test.value == 2, {~computer_routine_3_3 = Synth(\playbuf, [\bufnum, m[\end][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_concat_numBox.value, \loop, 0]).register}, {nil});
if(~playback_3_audio_test.value == 3, {~computer_routine_3_4 = Synth(\playbuf, [\bufnum, m[\end][3], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_3_bass_numBox.value, \loop, 0]).register}, {nil});






