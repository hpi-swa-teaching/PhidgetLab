accessing
isEngaged
	"Returns the engaged state of the motor. This is whether the motor is powered or not."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class
		primIsEngaged: phidget id
		at: index - 1) == 1