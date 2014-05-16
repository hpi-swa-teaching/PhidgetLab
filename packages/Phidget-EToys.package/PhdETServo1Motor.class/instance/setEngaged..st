accessing
setEngaged: aBoolean

	^ (phidHandle motors at: 1) isEngaged: aBoolean