SynthDef(\onset_test, {
	arg in, out;
	var trig = In.kr(in);
    var detect = PinkNoise.ar(Decay.kr(trig, 0.2));
	Out.ar(out, detect);
}).add;
