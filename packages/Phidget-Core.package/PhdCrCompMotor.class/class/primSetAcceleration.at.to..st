primitives
primSetAcceleration: phidgetIdArray at: index to: aFloat
	"Set the acceleration of the motor at the given index to aFloat. aFloat must be between primGetAccelerationMin and primGetAccelerationMax.
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetMotorAcceleration' module: 'PhidgetPlugin'>
	^ nil