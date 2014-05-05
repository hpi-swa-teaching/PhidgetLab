accessing
velocity
	"Gets the current velocity of the motor.
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetVelocity: phidget id
		at: index - 1