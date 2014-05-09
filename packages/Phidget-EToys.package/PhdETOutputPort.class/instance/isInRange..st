accessing
isInRange: aNumber
	
	^ (aNumber = 0) | (phidget outputPortAvailable: aNumber)