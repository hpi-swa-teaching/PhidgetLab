initialization
initialize

	| green |
	green := Color r: 0.4 g: 0.7 b: 0.4.
	super initialize.
	self
		width: 20;
		height: 17;
		color: green.