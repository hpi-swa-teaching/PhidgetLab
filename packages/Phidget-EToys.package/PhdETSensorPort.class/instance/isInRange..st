accessing
isInRange: aNumber
	
	^ (aNumber = 0) | (phidget sensorPortAvailable: aNumber)