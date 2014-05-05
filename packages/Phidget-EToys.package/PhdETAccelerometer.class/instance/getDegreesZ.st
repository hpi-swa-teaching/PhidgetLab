accessing
getDegreesZ

	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle axes at: 3) angleDegrees