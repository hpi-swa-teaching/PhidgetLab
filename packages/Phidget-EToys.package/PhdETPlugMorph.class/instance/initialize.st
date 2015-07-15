initialization
initialize

	| black |
	black := Color r: 0.15 g: 0.15 b: 0.15.
	super initialize.
	self 
		plugged: false;
		color: black.