SynthDef(\sines, {
	arg amp1=1.0, amp2=0.02, amp3=0.02, amp4=0.02, amp5=0.02, amp6=0.02, out=0, gate=1, amp=0;
	var sig, env;
	env = EnvGen.kr(Env.asr(0.01, 1, 0.01), gate, doneAction:2);
	sig =  SinOsc.ar(40, mul: amp1) +  SinOsc.ar(12285, 2pi.rand, amp2) + SinOsc.ar(16264, mul: amp3);
	sig = sig * env * amp.dbamp;
	Out.ar(out, sig);
}).add;
