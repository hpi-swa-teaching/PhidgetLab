initialization
createAndAddSubmorphs

	super createAndAddSubmorphs.
	motorMorph := PhdETServoPositionMorph new.
	self addMorph: motorMorph.