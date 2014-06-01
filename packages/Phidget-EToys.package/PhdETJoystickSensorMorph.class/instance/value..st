accessing
value: aPoint

	|  radius x y |
	
	radius := (self width) / 2.
	x := radius / 1000 * (500 - aPoint x).
	y := radius / 1000 * (500 - aPoint y).
	value := (x @ y).
	self updateIndicatorLine.