accessing
accelerationMax
	"Gets the max. acceleration supported by a motor
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetAccelerationMax: phidget id
		at: index - 1