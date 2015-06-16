heading
headDown

	| radians |
	radians := (self getHeadingUnrounded - 90.0) degreesToRadians.
	self setHeading:
		((radians cos @ radians sin abs) theta radiansToDegrees
			roundTo: 0.001) + 90.0.
