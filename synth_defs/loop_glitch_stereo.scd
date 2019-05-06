SynthDef(\loop_glitch_stereo, {
	arg buf_tap, curve, bufnum=0, rate=1, gate=1, startPos=0, startLoop=0, endLoop=2000, interp=2, buf, thresh, loopEnd_low=0.02, loopEnd_high =0.2, lag=5, rate_low, rate_high, onsets_in, audio_in, out, lag_weight_low=3,  lag_weight_high=7, atk=0.5, dec=0.1, sus=1.0, rel=0.5, amp=(-3), silence_weight_low=6, silence_weight_high=4, lag_env_time, lag_low, lag_high, lag_env_gate=0, silence_wait,prelevel=0, rate_low_gate=0, rate_low_time, rate_low_1, rate_low_2, rate_high_gate=0, rate_high_time, rate_high_1, rate_high_2, end_low_gate=0, end_low_time, end_low_1, end_low_2, end_high_gate=0, end_high_time, end_high_1, end_high_2, speed_time_gate=1, speed_high_1, speed_high_2, speed_time, speed_low_1, speed_low_2, silence_high_1, silence_high_2, silence_low_1, silence_low_2, silence_time, silence_time_gate=1, dust_low, dust_high, dust_gate, glitch_low, glitch_high, glitch_gate, delay_low, delay_high, delay_gate, delay_times=#[1, 1, 1], delay_levels=#[1, 1, 1], delay_time, delay_factor, single_delay_time, single_delay_gate=0, single_delay_low=(-1), single_delay_high=1, single_delay_factor, ring_mod_low, ring_mod_high, ring_mod_time, ring_mod_gate=0, audio_in_1, audio_in_2, pan_speed;

	var ring_mod_pos, glitch_trig, glitch, sig, in, rec, trig, lag_choose, timer, env, lag_env, silence, rate_low_env, rate_high_env, end_low_env, end_high_env, speed_env_low, speed_env_high, silence_env_high, silence_env_low, dust_speed, glitch_pos, delay_pos, single_delay_pos, in_1, in_2;
	buf = Buffer.alloc(s, s.sampleRate * 4.0, 1);

	in_1 = In.ar(audio_in_1);
	in_2 = In.ar(audio_in_2);

	in = Mix.ar([in_1, in_2]);

	silence = DetectSilence.ar(in, 0.05, silence_wait).linlin(0, 1, 1, 0).lag(0.1);

	env  = EnvGen.kr(Env.adsr(atk, dec, sus, rel, sustainLevel: 1.0, curve: curve), gate, doneAction:2);
	lag_env = EnvGen.kr(Env([lag_low, lag_high], [lag_env_time], \lin), lag_env_gate, doneAction:0);

	rate_low_env = EnvGen.kr(Env([rate_low_1, rate_low_2], [rate_low_time], \lin), rate_low_gate, doneAction:0);
	rate_high_env = EnvGen.kr(Env([rate_high_1, rate_high_2], [rate_high_time], \lin), rate_high_gate, doneAction:0);

	end_low_env = EnvGen.kr(Env([end_low_1, end_low_2], [end_low_time], \lin), end_low_gate, doneAction:0);
	end_high_env = EnvGen.kr(Env([end_high_1, end_high_2], [end_high_time], \lin), end_high_gate, doneAction:0);

	trig = Coyote.kr(in, fastMul: 0.6, thresh: thresh);


	speed_env_high = EnvGen.kr(Env([speed_high_1, speed_high_2], [speed_time], \lin), speed_time_gate, doneAction:0);
	speed_env_low = EnvGen.kr(Env([speed_low_1, speed_low_2], [speed_time], \lin), speed_time_gate, doneAction:0);


	silence_env_high = EnvGen.kr(Env([silence_high_1, silence_high_2], [silence_time], \lin), silence_time_gate, doneAction:0);
	silence_env_low = EnvGen.kr(Env([silence_low_1, silence_low_2], [silence_time], \lin), silence_time_gate, doneAction:0);


	ring_mod_pos = EnvGen.kr(Env([ring_mod_low, ring_mod_high], [ring_mod_time], \lin), ring_mod_gate, doneAction:0);

	glitch_pos = EnvGen.kr(Env([glitch_low, glitch_high], [silence_time], \lin), glitch_gate, doneAction:0);
	dust_speed = EnvGen.kr(Env([dust_low, dust_high], [silence_time], \lin), dust_gate, doneAction:0);

	delay_pos = EnvGen.kr(Env([delay_low, delay_high], [delay_time], \lin), delay_gate, doneAction:0);

	lag_choose = TWChoose.kr(trig, [0, lag_env], [lag_weight_low, lag_weight_high].normalizeSum).lag(0.5);

	timer = Sweep.kr(trig, 1.0);

	rec  = RecordBuf.ar(in, bufnum: buf, offset: 0, recLevel: 1, preLevel: prelevel, run: 1, loop: 0, trigger: trig, doneAction: 0);

	sig = LoopBuf.ar(1, bufnum: buf, rate: LFNoise0.kr(TRand.kr(speed_env_low, speed_env_high, trig)).range(rate_low_env, rate_high_env).lag(lag_choose), gate: 1, startPos: startPos, startLoop: startLoop, endLoop: LFNoise0.kr(TRand.kr(speed_env_low, speed_env_high, trig)).range(s.sampleRate*end_high_env, s.sampleRate*end_low_env).lag(lag_choose), interpolation: interp);

	glitch_trig = Dust.kr(dust_speed);
	glitch = sig * SetResetFF.kr(glitch_trig, (Sweep.kr(glitch_trig) > TWChoose.kr(glitch_trig, [0.02, 0.1, 0.5, 1, 2, 5], [0.9, 0.8, 0.7, 0.6, 0.5, 0.4].normalizeSum))).lag(0.005);

   single_delay_pos =  EnvGen.kr(Env([single_delay_low, single_delay_high], [delay_time], \lin), single_delay_gate, doneAction:0);

	sig = XFade2.ar(sig, Mix(SwitchDelay.ar(FreqShift.ar(in * (DetectSilence.ar(in, 0.01)<1).lag(0.05), LFBrownNoise1.kr(0.3).range(0, 1000)), 1, 1, delay_times, delay_factor, 6, 0.3)), delay_pos);

	sig = XFade2.ar(sig, SwitchDelay.ar(FreqShift.ar(in * (DetectSilence.ar(in, 0.01)<1).lag(0.05), LFBrownNoise1.kr(0.01).range(-500, 500)), 1, 1, {Rand(0.7, 1.2)}, single_delay_factor, 1.2), single_delay_pos);

	sig = XFade2.ar(sig, DiodeRingMod.ar(in, SinOscFB.ar(LFBrownNoise1.kr(0.1).range(300, 700), LFBrownNoise1.kr(0.1).range(0, pi/2))), ring_mod_pos);

	sig = XFade2.ar(sig, glitch, glitch_pos);

	sig = Pan2.ar(sig * env * amp.dbamp, LFNoise0.kr(pan_speed).range(-0.8, 0.8));

	Out.ar(out, sig);
}).add;