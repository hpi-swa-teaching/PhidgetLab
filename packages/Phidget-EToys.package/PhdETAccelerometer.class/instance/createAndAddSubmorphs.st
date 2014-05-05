initialization
createAndAddSubmorphs

	super createAndAddSubmorphs.
	
	gyroMorph := PhdETGyroMorph new
		extent: 70@70;
		update;
		yourself.
	self addMorph: gyroMorph.