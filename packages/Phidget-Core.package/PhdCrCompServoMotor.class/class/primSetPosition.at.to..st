primitives
primSetPosition: phidgetIdArray at: index to: aFloat
	"Set the position of the motor at the given index to aFloat. aFloat must be between primGetPositionMin and primGetPositionMax.
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetServoPosition' module: 'PhidgetPlugin'>
	^ nil