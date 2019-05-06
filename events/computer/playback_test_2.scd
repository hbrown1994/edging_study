if(~playback_2_audio_test.value == 0, {~computer_routine_2_sample_1 =  Synth(\sines, [\amp1, 0.1, \amp2, 0.05, \amp3, 0.03, \amp4, 0.03, \amp5 ,0.02, \amp6, 0.01, \gate, 1, \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_room_numBox.value]).register}, {nil});
if(~playback_2_audio_test.value == 1, {~computer_routine_2_sample_2 = Synth(\playbuf, [\bufnum, m[\sparse][0] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_loop_numBox.value]).register;
}, {nil});
if(~playback_2_audio_test.value == 2, {~computer_routine_sub_sample = Synth(\playbuf, [\bufnum, m[\sparse][2] ,\out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_sub_numBox.value]).register;
}, {nil});
if(~playback_2_audio_test.value == 3, {~computer_routine_2_sample_3 = Synth(\playbuf, [\bufnum, m[\sparse][3], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_inject_1_numBox.value, \loop, 0]).register;
}, {nil});
if(~playback_2_audio_test.value == 4, {~computer_routine_2_sample_4 = Synth(\playbuf, [\bufnum, m[\sparse][1], \out, ~computer_out, \gate, 1, \atk, 0.005, \rel, 0.005, \amp, ~playback_2_inject_2_numBox.value, \loop, 0]).register;
}, {nil});

