accessing
isStopped
	"Returns the motion state of the motor. This is whether the motor has stopped or not."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class
		primIsStopped: phidget id
		at: index - 1) == 1