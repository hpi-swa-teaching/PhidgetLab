accessing
velocityLimit
	"Gets the limited velocity of the motor (double between min and max).
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetVelocityLimit: phidget id
		at: index - 1