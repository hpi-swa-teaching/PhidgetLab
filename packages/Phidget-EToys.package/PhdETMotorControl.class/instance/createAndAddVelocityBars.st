initialization
createAndAddVelocityBars

	leftVelocityBar := self createVelocityBar.
	rightVelocityBar := self createVelocityBar.
	self
		addMorph: rightVelocityBar;
		addMorph: leftVelocityBar.