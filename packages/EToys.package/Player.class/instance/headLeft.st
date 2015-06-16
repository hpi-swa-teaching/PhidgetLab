heading
headLeft

	| radians |
	radians := (self getHeadingUnrounded - 90.0) degreesToRadians.
	self setHeading:
		((radians cos abs negated @ radians sin) theta radiansToDegrees
			roundTo: 0.001) + 90.0.
