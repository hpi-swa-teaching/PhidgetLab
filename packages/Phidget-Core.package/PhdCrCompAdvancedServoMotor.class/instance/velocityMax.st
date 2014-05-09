accessing
velocityMax
	"Gets the max. velocity supported by a motor.
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetVelocityMax: phidget id
		at: index - 1