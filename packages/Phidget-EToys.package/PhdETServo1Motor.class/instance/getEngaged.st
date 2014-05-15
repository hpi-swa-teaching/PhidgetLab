accessing
getEngaged

	(phidHandle motors indexIsInRange: 1) ifFalse: [ ^ false ].
	^ (phidHandle motors at: 1) isEngaged