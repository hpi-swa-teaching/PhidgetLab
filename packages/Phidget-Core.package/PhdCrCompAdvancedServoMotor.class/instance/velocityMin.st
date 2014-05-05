accessing
velocityMin
	"Gets the min. velocity supported by a motor.
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetVelocityMin: phidget id
		at: index - 1