heading
headUp

	| radians |
	radians := (self getHeadingUnrounded - 90.0) degreesToRadians.
	self setHeading:
		((radians cos @ radians sin abs negated) theta radiansToDegrees
			roundTo: 0.001) + 90.0.
