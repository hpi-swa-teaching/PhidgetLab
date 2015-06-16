global primitive backup
radiansToDegrees: radians

	| degrees deg |
	degrees := radians / 0.0174532925199433.
	deg := 90.0 - degrees.
	deg > 0.0 ifFalse: [deg := deg + 360.0].
	^ deg.

