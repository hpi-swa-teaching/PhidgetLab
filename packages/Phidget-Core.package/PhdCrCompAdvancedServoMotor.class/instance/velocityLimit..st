accessing
velocityLimit: aValue
	"Sets the limit of the velocity of the motor (double between min and max).
	if there was an error, return flase"
	
	| aFloat |
	phidget isAttached ifFalse: [ ^ false ].
	aFloat := aValue asFloat.
	(self velocityIsInRange: aFloat) ifFalse:[ ^ false ].
	^( self class
		primSetVelocityLimit: phidget id
		at: index - 1 
		to: aFloat) == 1