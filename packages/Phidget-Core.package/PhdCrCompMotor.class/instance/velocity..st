accessing
velocity: aValue
	"Set the velocity of the motor. aValue should be in Range of -100.0 and 100.0.
	Returns true if the setting was successful, false otherwise."
	
	| aFloat |
	phidget isAttached ifFalse: [ ^ false ].
	aFloat := aValue asFloat.
	^ (self class
		primSetVelocity: phidget id
		at: index - 1
		to: aFloat) == 1