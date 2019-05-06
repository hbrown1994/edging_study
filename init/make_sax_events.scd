~sax_state.add(\silence -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_silence.scd");
});

~sax_state.add(\sporadic -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_sporadic.scd");
});


~sax_state.add(\fx_test -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_fx_test.scd");
});

~sax_state.add(\fx_test_off -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_fx_test_off.scd");
});


//trans___________________________________
~sax_state.add(\sporadic_pulse-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_sporadic_pulse.scd");
});

~sax_state.add(\sporadic_sparse-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_sporadic_sparse.scd");
});

~sax_state.add(\sparse_gran-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_sparse_granular.scd");
});

~sax_state.add(\sparse_tran-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_sparse_tran.scd");
});

~sax_state.add(\gran_sparse -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_gran_sparse.scd");
});


~sax_state.add(\tran_sparse-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_tran_sparse.scd");
});


~sax_state.add(\pulse_silence -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_pulse_silence.scd");
});

~sax_state.add(\pulse_sparse -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_pulse_sparse.scd");
});


~sax_state.add(\sparse_silence -> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_trans_sparse_silence.scd");
});

/////////



~sax_state.add(\sax_onset_test-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_onset_test.scd");
});

~sax_state.add(\sax_onset_test_off-> {
thisProcess.interpreter.executeFile(~states_path_sax++"sax_onset_test_off.scd");
});


