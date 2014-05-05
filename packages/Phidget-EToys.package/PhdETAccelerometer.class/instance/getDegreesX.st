accessing
getDegreesX

	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle axes at: 1) angleDegrees