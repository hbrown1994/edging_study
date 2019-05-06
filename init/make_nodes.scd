//Create node groups on server.
s.bind({

	~samples = Group.new;
	~patterns = Group.after(~samples);
	~input = Group.after(~patterns);
	~input_sum = Group.after(~input);
	~amp_tracking = Group.after(~input_sum);

	~fxs = Group.after(~input_sum);

});