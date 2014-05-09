initialization
createAndAddVelocityMorph

	velocityMorph := PhdETBarMorph new.
	velocityMorph 
		width: self width - 10;
		height: 10;
		position:
			(self width // 2 - (velocityMorph width // 2)) @
			(self bottom - velocityMorph height - 5).
			
	self addMorph: velocityMorph.
	
	
			