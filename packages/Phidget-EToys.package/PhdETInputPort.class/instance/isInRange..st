accessing
isInRange: aNumber

	^ ((aNumber = 0) | (phidget inputPortAvailable: aNumber))