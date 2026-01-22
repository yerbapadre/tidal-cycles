s.reboot {
	s.options.numBuffers = 1024 * 256; // increase this if you need to load more samples
    s.options.memSize = 8192 * 32;
	s.options.numWireBufs = 256; 
	
	s.waitForBoot {
		~dirt = SuperDirt(2,s);
		~dirt.loadSoundFiles("/Users/jakeevans/Library/Application Support/SuperCollider/downloaded-quarks/Dirt-Samples/*");
		
		s.sync;
		
		~dirt.start(57120, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
	}
}

