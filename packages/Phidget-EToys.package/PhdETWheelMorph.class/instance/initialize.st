initialization
initialize

	super initialize.
	
	speed := 0.0.
	minSpeed := 0.0.
	maxSpeed := 1000.0.
	rotationTime := 100.
	rotationAngle := 0.0.
	
	self
		calcRotationParameters;
		asFlexOf: self createWheel.