accessing
velocity
	"Gets the velocity of the motor (double between min and max with regard to the limit).
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetVelocity: phidget id
		at: index - 1