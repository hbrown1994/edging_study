SynthDef(\clock,{
	arg i=0, reset, master_clock, in_cue, min, max, clock_speed=10,step_size=1;
	var sig, routine_trig, array;

	sig = Stepper.kr(trig: Impulse.kr(clock_speed), reset: reset, min: min, max: max, step: step_size, resetval:  35);

	routine_trig = Stepper.kr(trig: Impulse.kr(1), reset: reset, min: -1, max: 1000, step: 1, resetval:  -1);

	Out.kr(~osc_bus, sig);
	Out.kr(~routine_trig, routine_trig);
}).add;
