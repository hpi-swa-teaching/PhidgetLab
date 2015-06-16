running
setUp

	self soundSystemBackup: SoundService defaultOrNil.
	SoundService default: (self class environment at: #BaseSoundSystem ifAbsent: [nil]).