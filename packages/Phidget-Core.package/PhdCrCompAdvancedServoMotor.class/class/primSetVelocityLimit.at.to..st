primitives
primSetVelocityLimit: phidgetIdArray at: index to: aFloat
	"Set the limit of the velocity of the motor at the given index to aFloat. aFloat must be between primGetVelocityMin and primGetVelocityMax.
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetAdvancedServoVelocityLimit' module: 'PhidgetPlugin'>
	^ nil