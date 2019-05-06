~drum_state.add(\silence -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_silence.scd");
});

~drum_state.add(\sparse -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_sparse.scd");
});


~drum_state.add(\fx_test -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_fx_test.scd");
});

~drum_state.add(\fx_test_off -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_fx_test_off.scd");
});


//trans___________________________________

~drum_state.add(\gran_silence -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_gran_silence.scd");
});


~drum_state.add(\poly_pulse -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_poly_pulse.scd");
});

~drum_state.add(\poly_tran -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_poly_tran.scd");
});



~drum_state.add(\pulse_sparse -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_pulse_sparse.scd");
});



~drum_state.add(\sparse_poly -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_sparse_poly.scd");
});

~drum_state.add(\sparse_sporadic -> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_sparse_sporadic.scd");
});




~drum_state.add(\sporadic_gran-> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_sporadic_gran.scd");
});



~drum_state.add(\sporadic_silence-> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_sporadic_silence.scd");
});

~drum_state.add(\tran_sparse-> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_trans_tran_sparse.scd");
});



~drum_state.add(\drum_onset_test-> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_onset_test.scd");
});

~drum_state.add(\drum_onset_test_off-> {
thisProcess.interpreter.executeFile(~states_path_drum++"drum_onset_test_off.scd");
});

