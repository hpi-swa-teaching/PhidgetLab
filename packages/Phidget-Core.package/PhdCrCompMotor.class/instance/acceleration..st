accessing
acceleration: aValue
	"Set the acceleration of the motor.
	aValue should be a number betwenn self accelerationMin and self accelerationMax (inclusivly).
	Returns true if the setting was successful, false otherwise."
	
	| aFloat |
	phidget isAttached ifFalse: [ ^ false ].
	aFloat := aValue asFloat.
	(self accelerationIsInRange: aFloat) ifFalse: [ ^ false ].
	^ (self class
		primSetAcceleration: phidget id
		at: index - 1
		to: aFloat) == 1