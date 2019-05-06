SynthDef(\sax, {
	arg amp =(-6), gate=1, rel=0.1, atk=0.005, sus=1, dec=0.1, thresh, out;
	var env, in, in_contact, onsets;
	in = SoundIn.ar(~sax_in);
	onsets = Coyote.kr(in, fastMul: 0.6,  thresh: thresh);
	Out.ar(~sax_sends, in);
	Out.kr(~sax_onset_sends, onsets);
	env = EnvGen.kr(Env.adsr(atk, dec, sus, rel, sustainLevel: 1.0), gate, doneAction:2);
	in = in * env * amp.dbamp;
	Out.ar(out, in);
}).add;