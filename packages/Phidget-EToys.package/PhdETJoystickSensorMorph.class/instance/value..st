accessing
value: aPoint

	|  radius x y |
	
	radius := (self width) / 2.
	x := radius / 1000 * (aPoint x - 500).
	y := radius / 1000 * (aPoint y - 500).
	value := (x @ y).
	self updateIndicatorLine.