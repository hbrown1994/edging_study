SynthDef(\concat, {
	arg out, storesize, seektime, seekdur, length, freeze, bufnum, amp, input_1, input_2, atk, rel, gate;
	var in_1, in_2, sig, source, sum, env;

	in_1 = In.ar(input_1);
	in_2 = In.ar(input_2);

	env = EnvGen.kr(Env.asr(atk, 1, rel), gate, doneAction: 2);

	sum = Mix([in_1, in_2]);

	source = PlayBuf.ar(1, bufnum, 1, loop:1);


	sig = Concat2.ar(sum, source, storesize, seektime, seekdur, length, (Sweep.kr() > 126), 0, 0, 1, 0);

	sig = sig * env * amp.dbamp;

	Out.ar(out, sig)

}).add;