SynthDef(\playbuf_field, {
	arg bufnum, rate=1, trig, startPos=0, loop=1, amp=(-20), atk=0.05, dec=0.1, sus=1, rel=0.05, c1, c2, gate=1, out;
	var sig, env;
	sig = PlayBuf.ar(2, bufnum, rate, trig, {IRand(0, 41000)}, loop);
	env = EnvGen.kr(Env.asr({IRand(1, 40)}, sus, {IRand(1, 40)}, curve: [c1, c2]), gate, doneAction: 2);
	sig = sig * env * amp.dbamp;
	Out.ar(out, sig);
}).add;