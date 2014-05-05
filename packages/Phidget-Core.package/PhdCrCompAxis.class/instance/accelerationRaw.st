accessing
accelerationRaw
	"Gets the current acceleration of the axis (double between min and max).
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetAcceleration: phidget id
		at: index - 1