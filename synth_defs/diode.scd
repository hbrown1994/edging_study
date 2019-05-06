SynthDef(\diode, {
	arg input, out, amp, pitch_high, pitch_low, mod_speed=0.1, atk, sus, rel, gate=1;
	var in, sig, env;

	in = In.ar(input);
	env =  EnvGen.kr(Env.asr(atk, sus, rel), gate, doneAction: 2);
	sig = DiodeRingMod.ar(in, SinOscFB.ar(LFBrownNoise1.kr(mod_speed).range(pitch_low, pitch_high), 0));

	sig = sig * amp.dbamp * env;

	Out.ar(out, sig);

}).add;
