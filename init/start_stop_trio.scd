~index=0;
~clock.set(\reset, 0, \clock_speed, 10);

~start_button.value_(0);

s.freeAll;
CmdPeriod.run;

c[0].children[0].value_(0);
