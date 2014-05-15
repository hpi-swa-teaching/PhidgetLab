initialization
createWheel

	^ PhdETWheelMorph new
		extent: 60 @ 60;
		speed: 0;
		minSpeed: -100;
		maxSpeed: 100;
		yourself