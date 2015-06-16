testing
expectedFailures

	^ super expectedFailures, 
		(self class environment
			at: #BaseSoundSystem
			ifPresent: [:e| #()]
			ifAbsent: [#(testSoundTile) "Only this test depends on Sound"])