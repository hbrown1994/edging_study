SynthDef(\harm_delay, {
	arg pitch_low, pitch_high, size, hpf_freq=60, input, atk, rel, gate=1, shift_speed_gate=0, shift_speed_low=0.1, shift_speed_high=10.0, delayfactor=0.0, mul=0.1, amp=(-6), out=0, time, pitch_dis, time_dis;
	var in, env, temp, sig, shift_speed;

	in = In.ar(input);


	env = EnvGen.kr(Env.asr(atk, 1, rel), gate, doneAction:2);
	temp = 0;
	sig = 0;

	shift_speed = EnvGen.kr(Env([shift_speed_low, shift_speed_high], [time]), shift_speed_gate);

	temp = DelayN.ar(in, 1, 1, 0.2);

	3.do{
		temp = SwitchDelay.ar(
			PitchShift.ar(temp, size, LFBrownNoise1.kr(shift_speed / {Rand(0.8, 1.0)}).range(pitch_low, pitch_high), pitch_dis, time_dis),
		1, 1, {Rand(0.5, 5.0)}, delayfactor, 5.0, mul);

		sig = temp + sig;

	};

	sig = HPF.ar(sig, hpf_freq);
	sig = env * amp.dbamp * sig;

	Out.ar(out, sig);

}).add;