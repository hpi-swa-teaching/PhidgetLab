accessing
getMinPosition

	(phidHandle motors indexIsInRange: 1) ifFalse: [ ^ 0 ].
	^ (phidHandle motors at: 1) positionMin