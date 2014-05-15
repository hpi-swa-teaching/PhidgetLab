initialization
createAndAddOrientationCircle
	
	orientationCircle := CircleMorph new
		color: Color transparent;
		borderColor: Color green darker;
		borderWidth: 2;
		yourself.
	self
		addMorph: orientationCircle;
		updateOrientationCircle.