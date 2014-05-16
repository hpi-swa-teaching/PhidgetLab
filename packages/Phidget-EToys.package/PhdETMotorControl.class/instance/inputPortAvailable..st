port handling
inputPortAvailable: portNumber

	^ phidHandle isAttached and: [ phidHandle inputs indexIsInRange: portNumber ]