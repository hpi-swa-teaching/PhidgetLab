commands and slots
forward: dist

	self setX: (x + (dist asFloat * headingRadians cos)).
	self setY: (y - (dist asFloat * headingRadians sin)).
