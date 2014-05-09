primitives
primSetVelocity: phidgetIdArray at: index to: aFloat
	"Set the velocity of the motor at the given index to aFloat. aFloat must be between primGetVelocityMin and primGetVelocityMax.
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetAdvancedServoVelocity' module: 'PhidgetPlugin'>
	^ nil