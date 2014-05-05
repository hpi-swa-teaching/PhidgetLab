accessing
accelerationMin
	"Gets the min. acceleration supported by a motor
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetAccelerationMin: phidget id
		at: index - 1