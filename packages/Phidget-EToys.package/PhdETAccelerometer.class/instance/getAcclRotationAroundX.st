accessing
getAcclRotationAroundX

	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle axes at: 2) angleDegrees