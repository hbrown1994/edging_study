SynthDef(\playbuf, {
	arg bufnum, rate=1, trig, startPos=0, loop=1, amp=(-20), atk=0.05, dec=0.1, sus=1, rel=0.05, c1=4, c2=(-4), gate=1, out;
	var sig, env;
	sig = PlayBuf.ar(1, bufnum, rate, trig, startPos, loop);
	env = EnvGen.kr(Env.asr(atk, sus, rel, curve: [c1, c2]), gate, doneAction: 2);
	sig = sig * env * amp.dbamp;
	Out.ar(out, sig);
}).add;