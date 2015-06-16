player commands
getNormal

	| headingRadians degrees |
	headingRadians := (turtles arrays at: 7) at: self index.
	degrees := 90.0 - headingRadians radiansToDegrees.
	^ degrees >= 0.0 ifTrue: [degrees] ifFalse: [degrees + 360.0].
