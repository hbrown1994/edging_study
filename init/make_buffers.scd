//Adds all buffers in the "buffers" folder to a dictionary array.

//Stereo Buffers
b = Dictionary.new;
PathName(~buffers_path).entries.do{
	arg subfolder;
	b.add(
		subfolder.folderName.asSymbol ->
		Array.fill(
			subfolder.entries.size,
			{
				arg i;
					Buffer.read(s, subfolder.entries[i].fullPath);
				}
			)
		);
	};

m = Dictionary.new;
PathName(~buffers_path).entries.do{
	arg subfolder;
	m.add(
		subfolder.folderName.asSymbol ->
		Array.fill(
			subfolder.entries.size,
			{
				arg i;
					Buffer.readChannel(s, subfolder.entries[i].fullPath, channels: 0);
				}
			)
		);
	};

//Delay buffers
~real_time_buffer = Buffer.alloc(s, s.sampleRate*30, 1);
~long_delay_buffer_1 = Buffer.alloc(s, s.sampleRate*10, 1);
~long_delay_buffer_2 = Buffer.alloc(s, s.sampleRate*10, 1);
~long_delay_buffer_3 = Buffer.alloc(s, s.sampleRate*10, 1);


~short_delay_buffer_1 = Buffer.alloc(s, s.sampleRate*1, 1);
~short_delay_buffer_2 = Buffer.alloc(s, s.sampleRate*1, 1);
~short_delay_buffer_3 = Buffer.alloc(s, s.sampleRate*1, 1);

~bass_buffer_3_1 = Buffer.alloc(s, s.sampleRate*2, 1);
~bass_buffer_3_2 = Buffer.alloc(s, s.sampleRate*2, 1);

~bass_buffer_1_1 = Buffer.alloc(s, s.sampleRate*2, 1);
~bass_buffer_1_2 = Buffer.alloc(s, s.sampleRate*2, 1);

~bass_buffer_0_1 = Buffer.alloc(s, s.sampleRate*2, 1);
~bass_buffer_0_2 = Buffer.alloc(s, s.sampleRate*2, 1);

~bass_buffer_1 = Buffer.alloc(s, s.sampleRate*8, 1);

~percussion_buffer_3_1 = Buffer.alloc(s, s.sampleRate*2, 1);
~percussion_buffer_3_2 = Buffer.alloc(s, s.sampleRate*2, 1);

~percussion_buffer_3_3 = Buffer.alloc(s, s.sampleRate*2, 1);
~percussion_buffer_3_4 = Buffer.alloc(s, s.sampleRate*2, 1);

~trumpet_buffer_3= Buffer.alloc(s, s.sampleRate*2, 1);
~bass_buffer_3 = Buffer.alloc(s, s.sampleRate*2, 1);