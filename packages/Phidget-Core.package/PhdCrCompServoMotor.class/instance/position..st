accessing
position: aValue
	"Set the position of the motor.
	aValue should be a number betwenn self positionMin and self positionMax (inclusivly).
	Returns true if the setting was successful, false otherwise."
	
	| aFloat |
	phidget isAttached ifFalse: [ ^ false ].
	aFloat := aValue asFloat.
	(self positionIsInRange: aFloat) ifFalse: [ ^ false ].
	^ (self class
		primSetPosition: phidget id
		at: index - 1
		to: aFloat) == 1