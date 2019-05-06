
//Control busses
~osc_bus = Bus.control(s, 1);
~routine_trig = Bus.control(s, 1);
~osc_bus = Bus.control(s, 1);
~routine_trig = Bus.control(s, 1);

~a_key_bus = Bus.control(s, 1);
~b_key_bus = Bus.control(s, 1);

~percussion_onset_sends = Bus.control(s, 1);
~sax_onset_sends = Bus.control(s, 1);


//Audio Busses
~percussion_sends = Bus.audio(s, 1);
~sax_sends = Bus.audio(s, 1);

// Key State Busses
~a_key_bus = Bus.control(s, 1);
~b_key_bus = Bus.control(s, 1);