if(~rehearsal_menu.value == 0, {~macro_routines[\computer_routine_1].value}, {nil});
if(~rehearsal_menu.value == 1, {~macro_routines[\computer_routine_2].value; ~sax_timer_routine_6_5.play(SystemClock); ~drum_timer_routine_6_5.play(SystemClock);}, {nil});
if(~rehearsal_menu.value == 2, {~drum_timer_routine_9.play(SystemClock);
~sax_timer_routine_9.play(SystemClock);}, {nil});

if(~rehearsal_menu.value == 0, {~drum_timer_routine_0.play(SystemClock);}, {nil});
if(~rehearsal_menu.value == 1, {nil}, {nil});
if(~rehearsal_menu.value == 2, {nil}, {nil});

if(~rehearsal_menu.value == 0, {~sax_timer_routine_0.play(SystemClock);}, {nil});
if(~rehearsal_menu.value == 1, {nil}, {nil});
if(~rehearsal_menu.value == 2, {nil}, {nil});
