accessing
sensorPortAvailable: portNumber

	^ phidHandle isAttached and: [ phidHandle sensors indexIsInRange: portNumber ]