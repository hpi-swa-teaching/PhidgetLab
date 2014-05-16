initialization
initialize

	super initialize.
	
	self 
		color: Color white;
		x: 0.0;
		y: 0.0;
		z: 0.0;
		createAndAddAngleLine;
		createAndAddOrientationCircle.