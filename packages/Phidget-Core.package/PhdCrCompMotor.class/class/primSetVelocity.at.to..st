primitives
primSetVelocity: phidgetIdArray at: index to: aFloat
	"Set the velocity of the motor at the given index to aFloat. (For succeed: aFloat has to be in Range of -100.0 and 100.0)
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetMotorVelocity' module: 'PhidgetPlugin'>
	^ nil