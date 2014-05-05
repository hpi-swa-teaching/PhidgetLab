accessing
isSpinningAccelerated
	"Returns the speed ramping state of the motor. This is whether or not velocity and acceleration are used."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class
		primIsSpeedRampingOn: phidget id
		at: index - 1) == 1