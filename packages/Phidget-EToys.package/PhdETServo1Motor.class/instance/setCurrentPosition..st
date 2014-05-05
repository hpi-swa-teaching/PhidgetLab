accessing
setCurrentPosition: aFloat

	phidHandle isAttached ifFalse: [ ^ self ].
	^ (phidHandle motors at: 1) position: aFloat