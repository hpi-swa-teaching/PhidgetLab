accessing
outputPortAvailable: portNumber

	^ phidHandle isAttached and: [ phidHandle outputs indexIsInRange: portNumber ]