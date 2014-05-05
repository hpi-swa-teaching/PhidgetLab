initialization
createAndAddWheels

	leftWheel := self createWheel.	
	rightWheel := self createWheel.		
	self
		addMorph: rightWheel;
		addMorph: leftWheel.